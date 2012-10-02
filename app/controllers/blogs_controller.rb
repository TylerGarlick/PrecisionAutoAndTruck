class BlogsController < ApplicationController
  expose(:blog_entries) { BlogEntry.public.page(params[:page]).order('created_at DESC') }
  expose(:blog_entry) { BlogEntry.find_by_slug(params[:slug]) }

  def index
  end

  def show
  end
end
