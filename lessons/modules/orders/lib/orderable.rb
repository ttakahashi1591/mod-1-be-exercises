# ./lib/orderable.rb

module Orderable
  def confirmation(thing)
    "You got #{thing}."
  end

  def review
    "Please rate your order within 30 days."
  end

  def delivery(item, time)
    "Your #{item} will arrive in #{time}."
  end
end
