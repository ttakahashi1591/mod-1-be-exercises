require './lib/dish'

RSpec.describe Dish do
  it "exist with attributes" do
    dish = Dish.new("Couscous Salad", :appetizer)

    expect(dish.name).to eq("Couscous Salad")
    expect(dish.category).to eq(:appetizer)
  end
end