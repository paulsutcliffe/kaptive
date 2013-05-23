class About < ActiveRecord::Base
  attr_accessible :commitment, :history, :mission, :vision, :image
  mount_uploader :image, ImageUploader
end
