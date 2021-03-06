class ArtistsController < ApplicationController

    def show
        @artist = Artist.find(params[:id])
    end 

    def new 
        @artist = Artist.new
    end     

    def create
        artist = Artist.create(pass_params)
        redirect_to artist_path(artist)
    end 

    def edit
        @artist = Artist.find(params[:id])
    end 

    def update
        artist = Artist.find(params[:id])
        artist.update(pass_params)
        redirect_to artist_path(artist)
    end 

    private

        def pass_params
            params.require(:artist).permit(:name, :bio)
        end 
end
