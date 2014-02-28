class PhotosController < ApplicationController

  def new 
    @photo = Photo.new
  end

  def create
    @photo = current_user.photos.new photo_params

    if @photo.save 
      redirect_to @photo.user 
    else 
      render :new
    end
  end

  def show
  end

  private

  def photo_params
    params.require(:photo).permit(:name, :image, :description)
  end

end
