class Product < ActiveRecord::Base
  attr_accessible :content, :description, :name, :preview, :bottle, :caption, :bottleback
  mount_uploader :bottle, BottleUploader
  mount_uploader :bottleback, BottleUploader

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :content, :description, :name, :preview, :bottle, :presence => true
end
