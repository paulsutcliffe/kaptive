require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

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
