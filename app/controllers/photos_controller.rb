class PhotosController < ApplicationController
  expose(:photos) { Photo.public }

  def index
  end

  def show
  end
end
