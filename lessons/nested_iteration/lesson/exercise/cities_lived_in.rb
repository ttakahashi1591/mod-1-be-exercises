cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]
all_cities = []

cities_lived_in.each do |person, cities|
  cities.each do |city|
    unless all_cities.include?(city)
      all_cities.push(city)
    
    end
  end
end

p all_cities
# cities_array = cities_lived_in.values.flatten.uniq

# p cities_array

# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :alex]
# or
# ["Michaela", "Mike", "Alex"]
names = []

cities_lived_in. each do |key, value|
  names << key if value.include?("Philadelphia")
end

p names

# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }

# cities_population = {}

# cities_lived_in.each do |person|
#   person[1].each do |city|
#     if !cities_population.keys.include?(city)
#       cities_population[city] = 1
#     else
#       cities_population[city] += 1
#     end
#   end
# end

# p cities_population

by_city = Hash.new(0)

cities_lived_in.values.each do |city_array|
  city_array.each do |city|
    by_city[city] += 1
  end
end

p by_city

p cities_lived_in.values.flatten.tally