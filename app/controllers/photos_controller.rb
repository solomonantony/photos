class PhotosController < ApplicationController
  def new
    @album = Album.find(params[:album_id])
    @photo = @album.photos.build
  end
  
  def show
    
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def index
    @album = Album.find(params[:album_id])
    @photos = Photo.where(album_id: params[:album_id])
  end
  
  def update
    @photo = Photo.find params[:id]
    @photo.update_attributes!(photo_params)
    album = @photo.album
    redirect_to album_photos_path(album)
  end

  def create
     @album = Album.find(params[:album_id])
     @photo = @album.photos.create(photo_params)
     redirect_to album_photos_path
  end
  private 
  def photo_params
    params.require(:photo).permit(:caption, :snapped, :size)
  end
end
