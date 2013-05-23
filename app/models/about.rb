class About < ActiveRecord::Base
  attr_accessible :commitment, :history, :mission, :vision, :image, :commitment_image
  mount_uploader :image, ImageUploader
  mount_uploader :commitment_image, ImageUploader
end
