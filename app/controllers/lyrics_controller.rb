class LyricsController < ApplicationController

def index
    @lyrics = Lyric.all
end

def show
    @lyric = Lyric.find(params[:id])
end

def destroy
    @lyric = Lyric.find(params[:id])
        @mysong = @lyric.song
            @lyric.destroy
                redirect_to @mysong
end

def new
    @lyric = Lyric.new
end

end