class ArtistsController < ApplicationController

    before_action :find_artist, only: [:show,:edit, :update, :destroy]
     
    def index
        @artists = Artist.all 

    end
    
    
    def show
        # @artist = Artist.find(params[:id])
    end
    
    
    
    def new
        @artist = Artist.new

    end

    def create 
    @artist = Artist.create(artist_params)
    redirect_to @artist
    end

    def edit
        #find_artist
    end

    def update
        @artist.update(artist_params)
        redirect_to @artist
    end

    def destroy
        
        @artist.destroy

        redirect_to artists_path
    end
    
    
    private 
    def artist_params
        params.require(:artist).permit(:name, :bio)
        end
    def find_artist
        @artist = Artist.find(params[:id])
    end

end
