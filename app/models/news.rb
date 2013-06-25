class News < ActiveRecord::Base
  attr_accessible :content, :headline, :title, :image, :link
  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :image, :presence => true
end
