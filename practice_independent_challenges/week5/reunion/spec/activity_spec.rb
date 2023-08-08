require './lib/activity'

RSpec.describe do Activity
  before (:each) do 
    @activity = Activity.new("Brunch")
  end

  describe "#initialize" do 
    it "exists and has readable attributes" do 
      expect(@activity).to be_an(Activity)
      expect(@activity.name).to eq("Brunch")
      expect(@activity.participants).to eq({})
    end
  end

  describe "#add_participant and #total_cost" do 
    it "creates a hash with participants and can return total cost of the activity" do 

    @activity.add_participant("Maria", 20)

    expect(@activity.participants).to eq({"Maria" => 20})
    expect(@activity.total_cost).to eq(20)

    @activity.add_participant("Luther", 40)

    expect(@activity.participants).to eq({"Maria" => 20, "Luther" => 40})
    expect(@activity.total_cost).to eq(60)
    end
  end

  describe "#split and #owed" do
    it "can calculate the split cost and the amount owed to each participant" do
      @activity.add_participant("Maria", 20)
      @activity.add_participant("Luther", 40)

      expect(@activity.split).to eq(30)
      expect(@activity.owed).to eq({"Maria" => 10, "Luther" => -10})
    end
  end
end