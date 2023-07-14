fridge_items_1 = ["milk", "eggs", "eggs","eggs", "eggs",
                  "eggs", "eggs", "avocado", "avocado", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla"]

# Looking at the collection above:

# 1. What is problematic about listing `fridge_items_1`
# as an array structured grocery list?
# => You have to manually count how many of x tiems there are
# => You will need to create additional code to iterate over the array to determine how many of each to receive
# => Ordering matter in an array
# => Things can get unorganized with arrays

# 2. What might be a more readable way to structure this?
# => Using some sort of key/value pair (key => item, value => quantity)

p fridge_items_1.tally

# fridge_items_1 = [
#   []
#   []
#   []
# ]