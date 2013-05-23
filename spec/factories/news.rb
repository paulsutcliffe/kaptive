require'faker'

FactoryGirl.define do
  factory :news do
    title  { Faker::Lorem.sentence(word_count = 4, supplemental = false) }
    headline { Faker::Lorem.paragraph(sentence_count = 3, supplemental = false) }
    content { Faker::Lorem.paragraphs(paragraph_count = 3, supplemental = false) }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'kaptive_news.jpg')) }
  end
end
