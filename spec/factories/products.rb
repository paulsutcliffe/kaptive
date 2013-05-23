require 'faker'

FactoryGirl.define do
  factory :product do
    name { Faker::Lorem.sentence(word_count = 4, supplemental = false) }
    description { Faker::Lorem.paragraph(sentence_count = 3, supplemental = false) }
    content { Faker::Lorem.paragraphs(paragraph_count = 3, supplemental = false) }
    preview { Faker::Lorem.paragraph(sentence_count = 3, supplemental = false)  }
    bottle { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'bottle3.png')) }
    bottleback { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'bottleback.png')) }
  end
end
