class AlbumsController < ApplicationController
  def new
  end

  def index
    @albums = Album.all
  end

  def create
  end

  def update
  end

  def edit
  end
  def show
    id = params[:id]
    @album = Album.find(id)
  end
end
