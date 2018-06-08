class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :"songs/index"
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params["slug"])
    @artist = @song.artist
    @genre = SongGenre.find_by(song: @song).genre
    erb :"songs/show"
  end

end
