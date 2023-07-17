class Apartment 
  attr_accessor :rented,
                :rooms

  def initialize(rented = false)
    @rented = rented
    @rooms = []
  end

  def is_rented?
    @rented
  end

  def rent
    @rented = true
  end

  def add_room(room)
    @rooms << room
  end

  def list_rooms_by_name_alphabetically
    @rooms.map do |room|
      room.name
    end.sort
    # @room_names = []

    # @rooms.each do |room|
    #   @room_names << room.name
    # end

    # @room_names.sort
  end
end