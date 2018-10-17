class Room
  attr_reader :x, :y, :catagory
  def initialize(catagory, x, y)
    @catagory = catagory
    @x = x
    @y = y
  end

  def area
    @x * @y
  end
end
