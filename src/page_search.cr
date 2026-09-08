# Find in page bar, it mimics the behavior of the web browsers find bars:
#
# - Search as you type, highlighting all matches and jumping to the first one.
# - A `current/total` match counter, `No results` when the text isn't found.
# - Enter/Shift+Enter (also F3/Shift+F3 and Ctrl+G/Ctrl+Shift+G handled by `DocPage`)
#   walk the matches, wrapping around the document.
# - Escape closes the bar, clears the highlights and gives the focus back to the page.
# - Case insensitive by default, with a `Aa` toggle to match case.
@[Gtk::UiTemplate(file: "#{__DIR__}/page_search.ui",
  children: %w(search_bar entry info_label previous_button next_button match_case_button))]
class PageSearch < Adw::Bin
  include Gtk::WidgetTemplate

  Log = ::Log.for(PageSearch)

  # Same limit used by web browsers, more matches than this are not counted.
  MAX_MATCH_COUNT = 1000_u32

  # What we asked to the find controller, so we know how to update the match counter when
  # it answers back.
  private enum Request
    None
    Search
    Next
    Previous
  end

  @search_bar : Gtk::SearchBar
  @entry : Gtk::SearchEntry
  @info_label : Gtk::Label
  @previous_button : Gtk::Button
  @next_button : Gtk::Button
  @match_case_button : Gtk::ToggleButton

  @find_controller : WebKit::FindController
  @request = Request::None
  # nil means "we still do not know", i.e. no answer from the find controller yet.
  @found : Bool? = nil
  @match_count = 0
  @current_match = 0

  def initialize(@web_view : WebKit::WebView)
    super()

    @search_bar = Gtk::SearchBar.cast(template_child("search_bar"))
    @entry = Gtk::SearchEntry.cast(template_child("entry"))
    @info_label = Gtk::Label.cast(template_child("info_label"))
    @previous_button = Gtk::Button.cast(template_child("previous_button"))
    @next_button = Gtk::Button.cast(template_child("next_button"))
    @match_case_button = Gtk::ToggleButton.cast(template_child("match_case_button"))

    @find_controller = @web_view.find_controller

    @search_bar.connect_entry(@entry)

    setup_signals
  end

  private def setup_signals : Nil
    @entry.search_changed_signal.connect(&->search_changed)
    @entry.activate_signal.connect(&->search_next)
    @entry.next_match_signal.connect(&->search_next)
    @entry.previous_match_signal.connect(&->search_previous)
    @entry.stop_search_signal.connect(&->stop_search)

    key_ctl = Gtk::EventControllerKey.new
    key_ctl.key_pressed_signal.connect(&->entry_key_pressed(UInt32, UInt32, Gdk::ModifierType))
    @entry.add_controller(key_ctl)

    @next_button.clicked_signal.connect(&->search_next)
    @previous_button.clicked_signal.connect(&->search_previous)
    @match_case_button.toggled_signal.connect(&->restart_search)

    @search_bar.notify_signal["search-mode-enabled"].connect(&->search_mode_changed(GObject::ParamSpec))

    @find_controller.found_text_signal.connect(&->found_text(UInt32))
    @find_controller.failed_to_find_text_signal.connect(&->failed_to_find_text)
    @find_controller.counted_matches_signal.connect(&->counted_matches(UInt32))

    # Matches of the old page mean nothing on the new one.
    @web_view.notify_signal["uri"].connect(&->page_changed(GObject::ParamSpec))
  end

  def active? : Bool
    @search_bar.search_mode
  end

  # Shows the find bar, selecting the previous search text — so the user can just type over
  # it — and searching it again, like browsers do.
  def start_search : Nil
    @search_bar.search_mode = true
    @entry.grab_focus
    @entry.select_region(0, -1)
    restart_search
  end

  def stop_search : Nil
    @search_bar.search_mode = false
  end

  def search_next : Nil
    navigate(Request::Next)
  end

  def search_previous : Nil
    navigate(Request::Previous)
  end

  private def entry_key_pressed(key_val : UInt32, _key_code : UInt32, modifier : Gdk::ModifierType) : Bool
    if key_val == Gdk::KEY_Return || key_val == Gdk::KEY_KP_Enter || key_val == Gdk::KEY_ISO_Enter
      if modifier.shift_mask?
        search_previous
        return true
      end
    end
    false
  end

  private def search_mode_changed(_param_spec) : Nil
    return if active?

    # Leaving the search: drop the highlights and let the user scroll the page again.
    reset_matches
    @found = nil
    @find_controller.search_finish
    update_ui
    @web_view.grab_focus
  end

  private def page_changed(_param_spec) : Nil
    reset_matches
    @found = nil
    update_ui
  end

  private def search_changed : Nil
    text = @entry.text
    if text.empty?
      reset_matches
      @found = nil
      @find_controller.search_finish
      update_ui
      return
    end

    search(text)
  end

  private def restart_search : Nil
    text = @entry.text
    text.empty? ? update_ui : search(text)
  end

  private def search(text : String) : Nil
    Log.debug { "Searching for #{text.inspect}" }
    reset_matches
    @found = nil
    @request = Request::Search
    # Finish the previous search so this one starts from the beginning of the document,
    # otherwise WebKit resumes from the current match and the match counter would lie.
    @find_controller.search_finish
    @find_controller.search(text, find_options, MAX_MATCH_COUNT)
    @find_controller.count_matches(text, find_options, MAX_MATCH_COUNT)
    update_ui
  end

  private def navigate(request : Request) : Nil
    text = @entry.text
    return if text.empty?

    # No search running yet (e.g. the page changed under our feet), start one.
    if @found.nil?
      search(text)
      return
    end
    return if @match_count.zero?

    @request = request
    if request.next?
      @find_controller.search_next
    else
      @find_controller.search_previous
    end
  end

  private def find_options : UInt32
    options = WebKit::FindOptions::WrapAround
    options |= WebKit::FindOptions::CaseInsensitive unless @match_case_button.active
    options.to_u32
  end

  private def found_text(count : UInt32) : Nil
    @found = true
    # Matches are only counted by #count_matches, but if it didn't answer yet at least we
    # know there's one match.
    @match_count = count.to_i32.clamp(1, MAX_MATCH_COUNT.to_i32) if @match_count.zero?

    @current_match = case @request
                     when .next?     then @current_match >= @match_count ? 1 : @current_match + 1
                     when .previous? then @current_match <= 1 ? @match_count : @current_match - 1
                     else                 1
                     end
    @request = Request::None
    update_ui
  end

  private def failed_to_find_text : Nil
    @found = false
    reset_matches
    update_ui
  end

  private def counted_matches(count : UInt32) : Nil
    @match_count = count.to_i32
    @current_match = @current_match.clamp(@match_count.zero? ? 0 : 1, @match_count)
    update_ui
  end

  private def reset_matches : Nil
    @request = Request::None
    @match_count = 0
    @current_match = 0
  end

  private def update_ui : Nil
    found = @found
    @info_label.label = if @entry.text.empty? || found.nil? || (found && @match_count.zero?)
                          ""
                        elsif found
                          suffix = @match_count >= MAX_MATCH_COUNT ? "+" : ""
                          "#{@current_match}/#{@match_count}#{suffix}"
                        else
                          "No results"
                        end

    if found == false
      @entry.add_css_class("error")
    else
      @entry.remove_css_class("error")
    end

    can_navigate = @match_count.positive?
    @next_button.sensitive = can_navigate
    @previous_button.sensitive = can_navigate
  end
end
