class ArtistsController < ApplicationController
	def index
    	@artists = Artist.all
    end

    def show
 		 @artist = Artist.find(params[:id])
  		 @songs = @artist.songs
	end
	
	def new
  		@artist = Artist.new
	end

	def create
  		@artist = Artist.new(params.require(:artist).permit(:name, :albums, :hometown, :img))
  		@artist.save
  		redirect_to artists_path
	end
end