require './lib/photograph'
require './lib/artist'
require './lib/curator'

RSpec.describe Curator do
  before(:each) do
    @photo_1 = Photograph.new({
      id: "1",      
      name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      artist_id: "1",      
      year: "1954"      
      })
    @photo_2 = Photograph.new({
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"      
      })
    @photo_3 = Photograph.new({
      id: "3",      
      name: "Sunrise, Takahashi",      
      artist_id: "2",      
      year: "1945"      
      })
    @artist_1 = Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
      })
    @artist_2 = Artist.new({
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
      }) 
    @curator = Curator.new
  end
  
  describe "#initialize" do
    it "exists and has readable attributes" do
      expect(@curator).to be_an Curator
      expect(@curator.photographs).to eq([])
      expect(@curator.artists).to eq([])
    end
  end

  describe "#add_photograph" do
    it "adds a photo to the photographs array" do
      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      
      expect(@curator.photographs).to eq([@photo_1, @photo_2])
    end
  end

  describe "#add_artist" do
    it "adds an artist to the artists array" do
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
    
      expect(@curator.artists).to eq([@artist_1, @artist_2])
    end
  end

  describe "#find_artist_by_id" do
    it "find an artist using its :id key" do
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)

      expect(@curator.find_artist_by_id("1")).to eq(@artist_1)
    end
  end

  describe "#artists_and_photographs" do
    it "creates a hash containing all artists and their photographs" do
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      
      expected = {
        "Henri Cartier-Bresson" => [@photo_1],
        "Ansel Adams" => [@photo_2]
          }
      expect(@curator.artists_and_photographs).to eq(expected)
    end
  end

  describe "#artists_with_multiple_photographs" do
    it "provides a list of artists with more than 1 photo" do
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      @curator.add_photograph(@photo_3)

      expect(@curator.artists_with_multiple_photographs).to eq(["Ansel Adams"])
    end
  end

  describe '#photographs_taken_by_artist_from_country' do
    it 'returns photographs taken by artists from a specific country' do
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      @curator.add_photograph(@photo_3)
    
      expect(@curator.photographs_taken_by_artist_from_country("United States")).to eq([@photo_2, @photo_3])
    end
  end
end
