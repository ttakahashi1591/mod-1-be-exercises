require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  before(:each) do
    @potluck = Potluck.new("7-13-18")
 
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)

    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  end
  
  it "exists and has attributes" do   
    potluck = Potluck.new("7-13-18")


    expect(potluck.date).to eq("7-13-18")
    expect(potluck.dishes).to be_an(Array)
    expect(potluck.dishes).to eq([])
  end

  it "be able to add dishes to the potluck array" do    
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)

    expect(@potluck.dishes).to eq([@couscous_salad, @cocktail_meatballs])
    expect(@potluck.dishes.length).to eq(2)
  end
end
