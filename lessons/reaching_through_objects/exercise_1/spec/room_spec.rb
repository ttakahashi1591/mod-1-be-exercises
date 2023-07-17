require './lib/room'

RSpec.describe Room do
  before(:each) do
    @room = Room.new("bathroom")
  end

  describe "#initialize" do 
    it "can initialize" do
      expect(@room).to be_a(Room)
    end
  end

  describe "#name"
    it "has a name" do
      expect(@room.name).to eq("bathroom")
    end
end