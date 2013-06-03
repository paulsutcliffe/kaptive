require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

6.times do
  FactoryGirl.create :product
end

10.times do
  FactoryGirl.create :news
end

FactoryGirl.create :metadatum

FactoryGirl.create :about

12.times do
  FactoryGirl.create :contact
end
