class Product < ActiveRecord::Base
  attr_accessible :content, :description, :name, :preview, :bottle
  mount_uploader :bottle, BottleUploader

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :content, :descrition, :name, :preview, :bottle, :presence => true
end
