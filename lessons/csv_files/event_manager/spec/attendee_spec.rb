# require 'pry'
require 'rspec'
require './lib/attendee.rb'

describe Attendee do
  before :each do
    @person_1 = Attendee.new(1, "Allison", "Nguyen", "20010")
    @person_2 = Attendee.new(4, "David", "Thomas", "7306")
    @person_3 = Attendee.new(5, "Chris", "Sackett", nil)
    @person_4 = Attendee.new(7, "Mary Kate", "Curry", "212305")
  end

  it 'exists' do
    expect(@person_1).to be_an Attendee
    expect(@person_2).to be_an Attendee
    expect(@person_3).to be_an Attendee
    expect(@person_4).to be_an Attendee
  end

  it 'has an ID number' do
    expect(@person_1.id).to eq 1
    expect(@person_2.id).to eq 4
    expect(@person_3.id).to eq 5
    expect(@person_4.id).to eq 7
  end

  it 'has a first and last name' do
    expect(@person_1.name).to eq "Allison Nguyen"
    expect(@person_2.name).to eq "David Thomas"
    expect(@person_3.name).to eq "Chris Sackett"
    expect(@person_4.name).to eq "Mary Kate Curry"
  end

  it 'has a valid zip code' do
    expect(@person_1.zipcode).to eq "20010"
    expect(@person_2.zipcode).to eq "07306"
    expect(@person_3.zipcode).to eq "00000"
    expect(@person_4.zipcode).to eq "21230"
  end

  it "displays the ID, full name, and zipcode of attendee" do
    expect(@person_1.display).to eq "1: Allison Nguyen, 20010" 
    expect(@person_2.display).to eq "4: David Thomas, 7306"
    expect(@person_3.display).to eq "5: Chris Sackett, nil"
    expect(@person_4.display).to eq "7: Mary Kate Curry, 212305"
  end
end
