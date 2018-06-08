class GenresController < ApplicationController

  get '/genres' do
    @genres = Genre.all
    erb :"genres/index"
  end


  get '/genres/:slug' do
    @genre = Genre.find_by_slug(params["slug"])
    @songs = @genre.get_songs_from_genre
    @artists = @songs.map do |song|
      song.artist
    end
    erb :"genres/show"
  end
end
