suitcase = {
  "socks" => 4,
  "pants" => 1,
}

require 'pry';binding.pry

# 1. Add a key/value pair of shirts/3 to the suitcase.
suitcase["shirts"] => 3

# 2. Increase the value of shirts by 1.
suitcase["shirts"] => 4

suitcase["shirts"] = suitcase["shirts"] + 1 # These two lines are exactly the same
suitcase["shirts"] += 1                    # The code above is the breakdown of what the += 1 means

# 3. Add a key/value pair of swimsuit/true to the suitcase.
suitcase["swimsuits"] => true

# To delete the swimsuit.
suitcase.delete("swimsuits")

# To get "0" for all
suitcase = Hash.new(0)        # Note that this must be the first thing you do in your block. 

suitcase.default = 0   # Another way to do it and would be done after the block is built