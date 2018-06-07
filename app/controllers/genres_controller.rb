class GenresController < ApplicationController
  get '/genres/:slug' do
    @genre = Genre.find_by_slug(params["slug"])
    @songs = @genre.get_songs_from_genre
    erb :"genres/show"
  end

end
