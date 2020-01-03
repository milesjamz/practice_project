class ArtistsController < ApplicationController

def index
@artists = Artist.all
end

def show
    @artist = Artist.find(params[:id])
end

def create
    @artist = Artist.create(artist_params)
    if @artist.save
        redirect_to artists_path
    else
        redirect_to new_artist_path
    end
end

def new
    @artist = Artist.new
end

def edit
    @artist = Artist.find(params[:id])
end

def update
    @artist = Artist.find(params[:id])
        if @artist.update(artist_params)
            redirect_to @artist
        else
            render "edit"
        end
end

def destroy
    @artist = Artist.find(params[:id])
        @artist.destroy
            redirect_to artists_path
end

private

def artist_params
    params.require(:artist).permit(:name, :biography)
end

end