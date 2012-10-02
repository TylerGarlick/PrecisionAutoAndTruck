class Photo < ActiveRecord::Base
  attr_accessible :description, :is_public, :name, :photo_file, :photo_file_cache
  mount_uploader :photo_file, PhotoUploader

  validates_presence_of :name, :photo_file

  scope :public, where(is_public: true)
end
