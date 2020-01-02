class ArtistsController < ApplicationController

def index
@artists = Artist.all
end

def show
    @artist = Artist.find(params[:id])
end

def create
    @artist = Artist.create(artist_params)
end

private

def artist_params
    params.require(:artist).permit(:name, :biography)
end

end