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
end