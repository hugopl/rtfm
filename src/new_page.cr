@[Gtk::UiTemplate(resource: "/io/github/hugopl/rtfm/ui/new_page.ui", children: %w(docsets))]
class NewPage < Adw::Bin
  include Gtk::WidgetTemplate

  def initialize
    super()

    box = Gtk::FlowBox.cast(template_child("docsets"))
    DocSet.available_docsets.each_value do |metadata|
      label = "#{metadata.title} v#{metadata.version}"
      btn = Gtk::ToggleButton.new(label: label, action_name: "win.change_docset", action_target: GLib::Variant.new(metadata.id))
      box.append(btn)
    end
  end
end
