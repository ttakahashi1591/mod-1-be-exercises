class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    # @candies.count == 0 ? true : false
    # @candies.empty? *** This empty? is the method for arrays
    # count == 0
    if @candies.count == 0
      true
    else
      false
    end
  end

  def count
    @candies.size
    # @candies.length
    # @candies.count
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(candy_type)
    # @candies.any? { |candy| candy.type == candy_type }
    @candies.each do |candy| 
      if candy.type == candy_type
        return true # explicit returns are auto exits from a method
      end
    end
    false
  end
end

# Classes => Blueprint => To create instance objects
# => State
  # => Like a noun
  # => Certain attributes
  # => What it is
# => Behavior
  # => Methods
  # => Thiongs that the class can do
  # => What it does
  # => Usually something that will modify the state in some way 