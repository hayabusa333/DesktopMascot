require 'gtk2'

#window = Gtk::Window.new

class MyWindow < Gtk::Window

  def initialize
  	super("image")

    image = Gtk::Image.new("./ruby.png")

#   @img = Gdk::Pixbuf.new("./rubicle03.png")
#   shape_init

    vbox = Gtk::VBox.new

    vbox.pack_start(image, true, true, 0)

    add(vbox)

    set_default_size(600,480)
  end

=begin
   # 透過処理
  def shape_init
    bitmap = Gdk::Pixmap.new(nil, @img.width , @img.height , 1)
    draw bitmap.create_cairo_context
    shape_combine_mask(bitmap, 0, 0)
  end

  def draw cc
    cc.operator  = Cairo::OPERATOR_CLEAR
    cc.paint
    cc.operator  = Cairo::OPERATOR_SOURCE
    cc.antialias = Cairo::ANTIALIAS_SUBPIXEL
    cc.set_source_pixbuf @img
    cc.paint
  end
=end
end

window = MyWindow.new

window.decorated = false

window.modify_bg(Gtk::STATE_NORMAL, Gdk::Color.new(65535, 65535, 65535))

window.show_all

Gtk.main