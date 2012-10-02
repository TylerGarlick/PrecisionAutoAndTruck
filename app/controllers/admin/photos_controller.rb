class Admin::PhotosController < Admin::AdminController
  expose(:photos) {Photo.all}
  expose(:photo)

  def index
  end

  def show
  end

  def new
  end

  def create
    if photo.save
      redirect_to admin_photos_path, notice: "Photo was created successfully!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if photo.update_attributes(params[:photo])
      redirect_to admin_photos_path, notice: "Photo was updated successfully!"
    else
      render :edit
    end
  end

  def destroy
  end
end
