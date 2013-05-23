class News < ActiveRecord::Base
  attr_accessible :content, :headline, :title, :image
  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :title, use: :slugged
end
