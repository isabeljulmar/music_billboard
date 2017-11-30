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

  private 
  #set artist params
end
