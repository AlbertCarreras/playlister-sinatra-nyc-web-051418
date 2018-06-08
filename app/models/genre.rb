class Genre < ActiveRecord::Base
  extend Slugifiable::ClassMethod
  include Slugifiable::InstanceMethod

  has_many :song_genres


  def get_songs_from_genre
    song_genres = SongGenre.all.select do |sg|
      sg.genre == self
    end

    song_genres.map do |sg|
      sg.song
    end
  end
end
