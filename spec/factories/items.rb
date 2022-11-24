FactoryBot.define do
  factory :item do
    category_id       { 2 }
    explanation       { Faker::Lorem.sentence }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/img/オムライス.png'), filename: 'オムライス.png')
    end
  end
end
