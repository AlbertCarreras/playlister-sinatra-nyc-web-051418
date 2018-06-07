class ArtistsController < ApplicationController
<<<<<<< HEAD
  extend Slugifiable
=======

>>>>>>> origin/tony
  get '/artists' do
    @artists = Artist.all
    erb :"artists/index"
  end

  get '/artists/:slug' do
<<<<<<< HEAD
    @artist = Artist.find_by_slug(params[:slug])
=======
    @artist = Artist.find_by_slug(params["slug"])
>>>>>>> origin/tony
    erb :"artists/show"
  end
end
