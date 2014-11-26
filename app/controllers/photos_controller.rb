class PhotosController < ApplicationController
  def new
  end

  def edit
  end

  def index
    @album = Album.find(params[:album_id])
    @photos = Photo.where(album_id: params[:album_id])
  end
  def update
  end

  def create
  end
end
