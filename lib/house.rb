require './lib/room'

class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price.gsub('$', '').to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def area
    @rooms.sum do |room|
      room.area
    end
  end

  def rooms_from_catagory(catagory)
    @rooms.select do |room|
      room.catagory == catagory
    end
  end

  def price_per_square_foot
    (@price / area.to_f).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by do |room|
      room.area
    end
  end

  def rooms_by_category
    types = @rooms.map do |room|
      room.catagory
    end
    rooms_hash = {}
    types.uniq.each do |type|
      rooms_hash[type] = @rooms.select {|room| room.catagory == type}
    end
    rooms_hash
  end
end
