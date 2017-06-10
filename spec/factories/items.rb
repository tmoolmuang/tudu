FactoryGirl.define do
  factory :item do
    name Faker::Lorem.sentence(1, false, 2)
    user nil
  end
end
