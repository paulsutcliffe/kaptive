class Product < ActiveRecord::Base
  attr_accessible :content, :description, :name, :preview, :bottle, :bottleback
  mount_uploader :bottle, BottleUploader
  mount_uploader :bottleback, BottleUploader

end
