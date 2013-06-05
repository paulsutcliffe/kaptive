class About < ActiveRecord::Base
  attr_accessible :commitment, :history, :mission, :vision, :image, :commitment_image, :vision_image, :mission_image
  mount_uploader :image, ImageUploader
  mount_uploader :commitment_image, ImageUploader
  mount_uploader :vision_image, ImageUploader
  mount_uploader :mission_image, ImageUploader

  validates :image, :presence => true
end
