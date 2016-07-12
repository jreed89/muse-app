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
	
	def edit
    	@artist = Artist.find(params[:id])
	end

	def update
    artist = Artist.find(params[:id])
    artist.update_attributes(params.require(:artist).permit(:name, :albums, :hometown))

    redirect_to artist
	end
	
	def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path
end
end