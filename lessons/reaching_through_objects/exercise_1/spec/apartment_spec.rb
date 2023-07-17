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
end