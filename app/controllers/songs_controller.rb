class SongsController < ApplicationController

  def index
    songs = Song.all
    render json: songs.as_json 
  end

  def show
    # the_id = params[:id]
    song = Song.find_by(id: params[:id])
    render json: song.as_json
  end

  
end


