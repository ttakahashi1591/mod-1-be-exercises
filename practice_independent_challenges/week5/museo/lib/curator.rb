class Curator
  attr_reader :photographs,
              :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find { |artist| artist.id == id }
  end

  def artists_and_photographs
    artists_and_photos = {}

    @artists.each do |artist|
      artist_name = artist.name
      artist_photos = @photographs.select { |photo| photo.artist_id == artist.id }
      artists_and_photos[artist_name] = artist_photos
    end

    artists_and_photos
  end

  def artists_with_multiple_photographs
    artists_with_multiple_photos = @artists.select do |artist|
      artist_photos = @photographs.select { |photo| photo.artist_id == artist.id }
      artist_photos.length > 1
    end

    artists_with_multiple_photos.map(&:name)
  end

  def photographs_taken_by_artist_from_country(country)
    artist_ids_from_country = @artists.select { |artist| artist.country == country }.map(&:id)
    photos_from_country = @photographs.select { |photo| artist_ids_from_country.include?(photo.artist_id) }
    photos_from_country
  end
end