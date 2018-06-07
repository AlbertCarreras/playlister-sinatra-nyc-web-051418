class Song < ActiveRecord::Base
  has_many :song_genres
  belongs_to :artist

  # def song_genres
  #   Song_Genres.all.select do |sg|
  #     sg.song == self
  #   end
  # end
end
