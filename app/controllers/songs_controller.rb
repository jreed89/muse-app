class SongsController < ApplicationController

  def new
    puts request.params
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

end