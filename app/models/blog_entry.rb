class BlogEntry < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  self.per_page = 3
  attr_accessible :body, :is_public, :slug, :title

  validates_presence_of :title, :body
  validates_uniqueness_of :title

  scope :public, where(is_public: true)

end
