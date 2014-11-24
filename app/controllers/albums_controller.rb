class AlbumsController < ApplicationController
  def new
  end

  def index
    @albums = Album.all
  end

  def create
    @album = Album.create(album_params)
    redirect_to albums_path
  end
  

  def update
  end

  def edit
  end
  def show
    id = params[:id]
    @album = Album.find(id)
  end
  private
  def album_params
      params.require(:album).permit(:name, :created, :comments)
  end
end
