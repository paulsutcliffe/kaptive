require 'factory_girl'

5.times do
  FactoryGirl.create :product
end

FactoryGirl.create :metadatum

FactoryGirl.create :about
