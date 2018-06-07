class Song < ActiveRecord::Base
  has_many :genres
  belongs_to :artist

  def song_genres
    binding.pry
    true
  end
end
