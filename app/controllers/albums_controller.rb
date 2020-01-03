class AlbumsController < ApplicationController
before_action :find_album, only: [:show, :edit, :update, :destroy]

def index
    @albums = Album.all
end

def show
end

def new
    @album = Album.new
end

def create
    @album = Album.create(albums_params)
    if @album.save
        redirect_to albums_path
    else
        flash[:errors] = @album.errors.full_messages
        redirect_to new_album_path
    end
end

def edit
end

def update
        if @album.update(album_params)
            redirect_to @album
        else
            flash[:errors] = @album.errors.full_messages
            redirect_to edit_student_path(@album)
        end
end

def destroy
    @album.destroy
        redirect_to albums_path
end

private

def albums_params
    params.require(:album).permit(:name, :artist_id)
end

def find_album
    @album = Album.find(params[:id])
end 

end