require "csv"

# ITERATION 1

# contents = File.read "full_event_attendees.csv"
# puts contents

# lines = File.readlines "full_event_attendees.csv"
# lines.each do |line|
#   puts line
# end

# contents = CSV.open "full_event_attendees.csv", headers: true
# contents.each do |row|
#   name = row[2]
#   puts name
# end

# contents = CSV.open "fulL_event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]

#   if zipcode.nil?
#     zipcode = "00000"
#   elsif zipcode.length < 5
#     zipcode = zipcode.rjust 5, "0"
#   elsif zipcode.length > 5
#     zipcode = zipcode[0..4]
#   end

#   puts "#{name} #{zipcode}"
#  end

# ITERATION 2

# def clean_zipcode(zipcode)
#   zipcode.to_s.rjust(5,"0")[0..4]
# end

# puts "EventManager Initialized."

# contents = CSV.open 'full_event_attendees.csv', headers: true, header_converters: :symbol

# contents.each do |row|
#   name = row[:first_name]

#   zipcode = clean_zipcode(row[:zipcode])

#   puts "#{name} #{zipcode}"
# end