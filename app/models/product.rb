class Product < ActiveRecord::Base
  attr_accessible :content, :description, :name, :preview
end
