class SongsController < ApplicationController
  def index
  	@songs  = Song.all
  end

  def upload
  end

  def show 
  end

  def delete
  end
end
