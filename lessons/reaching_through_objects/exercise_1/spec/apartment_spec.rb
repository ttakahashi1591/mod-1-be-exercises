require './lib/room'
require './lib/apartment'

RSpec.describe Apartment do
  before(:each) do
    @apartment = Apartment.new
  end

  describe "#initialize" do
    it "can initialize" do
      expect(@apartment).to be_a(Apartment)
    end
  end

  describe "#is_rented?" do
    it "returns a boolean based on apartment vaccany" do
      expect(@apartment.is_rented?).to eq(false)
    end
  end

  describe "#rent" do
    it "rents out an available apartment" do
      expect(@apartment.is_rented?).to eq(false)

      @apartment.rent

      expect(@apartment.is_rented?).to eq(true)
    end
  end

  describe "#add_room" do
    it "add a room to the apartment" do
      @apartment = Apartment.new
      bathroom = Room.new("bathroom")
      
      @apartment.add_room(bathroom)
      @apartment.add_room(Room.new("laundry"))
      @apartment.add_room(Room.new("kitchen"))
      @apartment.add_room(Room.new("bedroom")) 

      expect(@apartment.rooms).to be_a(Array)
    end
  end

  describe "#list_rooms_by_name_alphabetically" do
    it "lists rooms in array in alphabetical order" do
      @apartment = Apartment.new
      bathroom = Room.new("bathroom")
      
      @apartment.add_room(bathroom)
      @apartment.add_room(Room.new("laundry"))
      @apartment.add_room(Room.new("kitchen"))
      @apartment.add_room(Room.new("bedroom")) 

      expect(@apartment.rooms).to be_a(Array)

      expect(@apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
    end
  end
end