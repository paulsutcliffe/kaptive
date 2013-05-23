# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :metadatum do
    phone "(305) 235-1611"
    facebook "http://www.facebook.com/"
    twitter "http://www.twitter.com/"
    email "info@nworldp.com"
    web "www.nworldp.com"
    kaptive "www.mykaptive"
    address "New World Products and Beverage Ltd.
    2nd Floor
    The Crescent Building
    Northwood, Santry
    Dublin 9
    Republic of Ireland"
    logo { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'logo.png')) }
  end
end
