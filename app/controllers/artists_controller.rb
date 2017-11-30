class ArtistsController < ApplicationController
  def index
  	@artist = Artist.all
  end

  def show
  end

  def edit
  end

  def new
  	@artist = Artist.new
  end

  def create
  	@artist = Artist.new(artist_params)

  	if @artist.save
  		redirect_to artists_path @artist
  	else
  		render :new
  	end
  end

  private 
  #set artist params
  def artist_params
  	params.require(:artist).permit()
  end
end
