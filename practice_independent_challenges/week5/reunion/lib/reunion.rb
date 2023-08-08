class Reunion
  attr_reader :name,
              :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def event_total_cost
    @activity.particpants.each do |participant|
      event_total_cost = @activities.participants[:name]
      event_total_cost    
    end
  end
end