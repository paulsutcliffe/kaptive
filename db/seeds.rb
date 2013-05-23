require 'factory_girl'

7.times do
  FactoryGirl.create :product
end

3.times do
  FactoryGirl.create :news
end

FactoryGirl.create :metadatum

FactoryGirl.create :about

12.times do
  FactoryGirl.create :contact
end
