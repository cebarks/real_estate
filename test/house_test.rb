require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class RoomTest < Minitest::Test
  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
  end

  def test_it_creates
    assert_instance_of Room, @room
  end

  def test_its_the_correct_price
    assert_equal :bedroom, @room.catagory
  end

  def test_its_the_correct_address
    assert_equal "123 sugar lane", @house.address
  end

  def test_it_has_no_rooms_by_default
    assert_equal [], @house.rooms
  end

  def test_it_can_add_rooms
    @house.add_room(room_1)
    @house.add_room(room_2)
    assert_equal [@room_1, @room_2], @house.rooms
  end
end
