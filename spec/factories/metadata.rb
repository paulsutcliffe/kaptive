# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :metadatum do
    phone "(305) 235-1611"
    facebook "http://www.facebook.com/MyKaptive"
    twitter "http://www.twitter.com/kaptive"
    email "info@nworldp.com"
    web "www.nworldp.com"
    kaptive "www.mykaptive"
    address "<strong>New World Products and Beverage Ltd.</strong><br />
    2nd Floor<br />
    The Crescent Building<br />
    Northwood, Santry<br />
    Dublin 9<br />
    Republic of Ireland"
    logo { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'logo.png')) }
  end
end
