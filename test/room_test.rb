require 'minitest/autorun'
require 'minitest/pride'
require './lib/room.rb'

class RoomTest < Minitest::Test
  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_it_creates
    assert_instance_of Room, @room
  end

  def test_its_the_correct_catagory
    assert_equal :bedroom, @room.catagory
  end

  def test_its_the_right_area
    assert_equal 130, @room.area
  end
end
