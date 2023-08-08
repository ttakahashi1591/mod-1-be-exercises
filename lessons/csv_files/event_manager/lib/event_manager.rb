require "csv"
# require './data/full_event_attendees'
require "./lib/attendee"

class EventManager
  def create_attendees
    contents =CSV.open "event_attendees.csv", headers: true, header_converters : :symbol

    contents.map do |row|

    end
  end
end

# Robert's Solution

class EventManager
  attr_reader :list,
              :attendees
  
  def initialize(list)
    @list = CSV.open list, headers: true, header_converters: :symbol
    @attendees = list_attendees
  end

  def content(header)
    @list.each do |row|
      header = row[header.to_sym]
      header
    end
  end

  def list_attendees
    @list.map do |row|
      id = row[:id]
      first_name = row[:first_name]
      last_name = row[:last_name]
      zipcode = row[:zipcode]

      Attendee.new(id, first_name, last_name, zipcode)
    end
  end

  def display_attendees
    @attendees.map { |attendee| attendee.display}
  end
end

# def clean_zipcode(zipcode)
#   if zipcode.nil?
#     "00000"
#   elsif zipcode.length < 5
#     zipcode.rjust(5,"0")
#   elsif zipcode.length > 5
#     zipcode[0..4]
#   else
#     zipcode
#   end
# end

# def clean_zipcode(zipcode)
#   zipcode.to_s.rjust(5,"0")[0..4]
# end

# puts "EventManager Initialized."

# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

# contents.each do |row|
#   name = row[:first_name]

#   zipcode = clean_zipcode(row[:zipcode])

#   puts "#{name} #{zipcode}"
# end

# contents = File.read "event_attendees.csv"
# puts contents

# puts File.exist? "event_attendees.csv"

# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   puts line
# end

# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   columns = line.split(",")
#   p columns
# end

# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   next if line == "id,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

# lines = File.readlines "event_attendees.csv"
# row_index = 0
# lines.each do |line|
#   row_index = row_index + 1
#   next if row_index == 1
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

# lines = File.readlines "event_attendees.csv"
# lines.each_with_index do |line,index|
#   next if index == 0
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end

# contents = CSV.open "event_attendees.csv", headers: true
# contents.each do |row|
#   name = row[2]
#   puts name
# end

# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   puts name
# end

# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]
#   puts "#{name} #{zipcode}"
# end

# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]

#   # if the zip code is exactly five digits, assume that it is ok
#   if zipcode.nil?
#     zipcode = "00000"
#   # if the zip code is more than 5 digits, truncate it to the first 5 digits
#   elsif zipcode.length < 5
#     zipcode = zipcode.rjust 5, "0"
#   # if the zip code is less than 5 digits, add zeros to the front until it becomes five digits
#   elsif zipcode.length > 5
#     zipcode = zipcode[0..4]
#   end

#   puts "#{name} #{zipcode}"
#  end


