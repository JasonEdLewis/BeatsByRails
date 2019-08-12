class SongsController < ApplicationController
    before_action :find_song , only: [:show, :edit, :update, :destroy]


    def index
        @songs = Song.all
    end

    def show

    end


    def new 
        @song = Song.new
    end

    def create 
        # byebug
     @song = Song.create(song_params)
     redirect_to @song.artist

    end


    private

    def song_params
        params.require(:song).permit(:artist_id, :genre_id, :name)
    end

    def find_song
        @song = Song.find(params[:id])
    end
end
