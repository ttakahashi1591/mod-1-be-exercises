class Potluck
  attr_reader :date,
              :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    dishes.select do |dish| 
      dish.category == category
    end
  end

  def menu
    app_array = get_all_from_category(:appetizer).map do |dish|
      dish.name
    end

    ent_array = get_all_from_category(:entre).map do |dish|
      dish.name
    end

    des_array = get_all_from_category(:dessert).map do |dish|
      dish.name
    end

    {
      appetizers: app_array.sort,
      entres: ent_array.sort,
      desserts: des_array.sort
    }
  end

  def ratio(category)
    ((get_all_from_category(category).length.to_f / @dishes.length ) * 100).round(1)
  end
end