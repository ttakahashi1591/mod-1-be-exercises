require './lib/activity'
require './lib/reunion'

RSpec.describe do Reunion
  before (:each) do 
    @reunion = Reunion.new("1406 BE")  
    @activity_1 = Activity.new("Brunch")
    @activity_2 =Activity.new("Happy Hour")
  end

  describe "#initialize" do 
    it "exists and has readable attributes" do 
      expect(@reunion).to be_an(Reunion)
      expect(@reunion.name).to eq("1406 BE")
      expect(@reunion.activities).to eq([])
    end
  end

  describe "#add_activity" do 
    it "can add an activity" do 
      @reunion.add_activity(@activity_1)
      expect(@reunion.activities).to eq [@activity_1]
    end
  end

  describe "#event_total_cost" do
    it "can return total cost of all activities in an event" do
      @reunion.add_activity(@activity_1)
      @activity_1.add_participant("Maria", 20)
      @activity_1.add_participant("Luther", 40)
      
      expect(@reunion.event_total_cost).to eq(60)
    end
  end
end