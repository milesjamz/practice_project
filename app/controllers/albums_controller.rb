class AlbumsController < ApplicationController

def index
    @albums = Album.all
end

def show
    @album = Album.find(params[:id])
end

def new
    @album = Album.new
end

def create
    @album = Album.create(albums_params)
    if @album.save
        redirect_to albums_path
    else
        erb :'/albums/new'
    end
end

def edit
    @album = Album.find(params[:id])
end

def update
    @album = Album.find(params[:id])
        if @album.update(album_params)
            redirect_to @album
        else
            render :edit
        end
end

def destroy
    @album = Album.find(params[:id])
        @album.destroy
            redirect_to albums_path
end

private

def albums_params
    params.require(:album).permit(:name, :artist_id)
end

end