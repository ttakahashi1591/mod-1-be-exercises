class Attendee 
  attr_reader :id,
              # :first_name,
              # :last_name,
              :zipcode,
              :name

  def initialize(id, first_name, last_name, zipcoded)  
    @id = id
    @first_name = first_name
    @last_name = last_name
    @name = "#{first_name} #{last_name}"
    @zipcode = clean_zip(zipcode)
  end

  # def name
  #   "#{@first_name} #{@last_name}"
  # end

  # def zipcode
  #   zipcode.nil?
  #   clean_zip
  # end

  def display
    "#{@id}: #{name}, #{@zipcode}"
  end

  def clean_zip
    @zipcode.to_s.rjust(5,"0")[0..4]
  end
end