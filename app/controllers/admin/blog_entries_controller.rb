class Admin::BlogEntriesController < Admin::AdminController

  expose(:blog_entries) { BlogEntry.all }
  expose(:blog_entry)

  def index
  end

  def show
  end

  def new
    blog_entry.is_public = true
  end

  def create
    if blog_entry.save
      redirect_to admin_blog_entries_path, notice: "Blog entry #{blog_entry.title} was created successfully!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if blog_entry.update_attributes(params[:blog_entry])
      redirect_to admin_blog_entries_path, notice: "Blog entry #{blog_entry.title} was updated successfully!"
    else
      render :edit
    end
  end

  def destroy
    blog_entry.destroy
    redirect_to admin_blog_entries_path, notice: "Blog entry #{blog_entry.title} was deleted successfully!"
  end
end
