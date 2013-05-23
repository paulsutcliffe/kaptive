class Metadatum < ActiveRecord::Base
  attr_accessible :address, :email, :facebook, :kaptive, :phone, :twitter, :web, :logo
  mount_uploader :logo, LogoUploader
end
