FactoryBot.define do
  factory :user do
    transient do
      person { Gimei.name }
    end

    name                   { Gimei.name }
    user_name              { 'test1111' }
    email                  { Faker::Internet.free_email }
    password               { '1a' + Faker::Internet.password(min_length: 8) }
    password_confirmation  { password }
    height_id              { Faker::Number.between(from: 1, to: 7) }
    figure_id              { Faker::Number.between(from: 1, to: 5) }
    sex_id                 { Faker::Number.between(from: 1, to: 4) }
    style_id               { Faker::Number.between(from: 1, to: 5) }
    age_id                 { Faker::Number.between(from: 1, to: 10) }
    bio                    { Faker::Lorem.sentence }
  end
end
