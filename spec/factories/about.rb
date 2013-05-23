require'faker'

FactoryGirl.define do
  factory :about do
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'about.jpg')) }
    history { Faker::Lorem.paragraph(sentence_count = 3, supplemental = false) }
    commitment { Faker::Lorem.paragraph(sentence_count = 3, supplemental = false) }
    vision { Faker::Lorem.paragraph(sentence_count = 3, supplemental = false) }
    mission { Faker::Lorem.paragraph(sentence_count = 3, supplemental = false) }
  end
end
