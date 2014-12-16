require "gosu"

class Hello < Gosu::Window
  class ZOrder
    BACK_GROUND, TEXT = *0..1
  end

  def initialize(width=240, height=160, fullscreen=false)
    super(width, height, fullscreen)
    @font = Gosu::Font.new(self, Gosu.default_font_name, 40)
    @y = 0
    @y_movement = 1
  end

  def update
    @y += @y_movement
    if @y > height
      @y_movement *= -1
    end
  end

  def draw
    @font.draw("Hello, Gosu!", 0, @y, ZOrder::TEXT)
  end
end

hello = Hello.new
hello.show
