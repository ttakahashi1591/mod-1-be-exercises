# Part One
# Given the follow array:
# animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.
# p animals.map { |animal| animal.to_s }

# string_animals = []

# animals.each do |animal|
#  string_animals << animal.to_s
# end

# p string_animals

# 2. Return an array of animals with a length >= 4.
# p animals.find_all { |animal| animal.length >= 4 }


# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
p nested_animals.flatten.map { |animal| animal.to_s }


# 2. Return an unnested array of animals with length >= 4
p nested_animals.flatten.find_all { |animal| animal.length >= 4 }

selected_animals = []

nested_animals.each do |group|
  group.each do |animal|
    if animal.length >= 4
      selected_animals << animal
    end
  end
end

p selected_animals

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
objects = nested_animals.flatten.each_with_object({}) do |animal, hash|
  hash[animal] = animal.length
end

p objects

animals_hash = {}

nested_animals.each do |group|
  group.each do |animal|
    animals_hash[animal] = animal.length  
  end
end

p animals_hash