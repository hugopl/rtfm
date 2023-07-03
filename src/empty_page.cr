@[Gtk::UiTemplate(resource: "/io/github/hugopl/Rtfm/ui/new_page.ui", children: %w(docsets))]
class NewPage < Adw::Bin
  include Gtk::WidgetTemplate

  def initialize
    super()

    box = Gtk::FlowBox.cast(template_child("docsets"))
    DocSet.available_docsets.each do |docset_name|
      btn = Gtk::ToggleButton.new(label: docset_name, action_name: "win.change_docset", action_target: GLib::Variant.new(docset_name))
      box.append(btn)
    end
  end
end
