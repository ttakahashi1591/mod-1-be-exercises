require './lib/room'

RSpec.describe Room do
  before(:each) do
    @room = Room.new
  end

  describe "#initialize" do 
    it "can initialize" do
      expect(@room).to be_a(Room)
    end
  end
end