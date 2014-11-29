class AlbumsController < ApplicationController
  before_filter :authenticate_user!
  
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
    @album = Album.find params[:id]
    @album.update_attributes!(album_params)
    redirect_to album_path(@album)
  end

  def edit
    @album = Album.find params[:id]
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
