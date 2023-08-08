class Activity
  attr_reader :name 
  
  attr_accessor :participants
  def initialize(name)
    @name = name 
    @participants = Hash.new
  end

  def add_participant(name, cost)
    @participants[name] = cost
  end

  def total_cost
    @participants.values.sum
  end

  def split
    total_cost / @participants.length
  end

  def owed
    owed_amount = split
    @participants.transform_values { |cost| owed_amount - cost }
  end
end