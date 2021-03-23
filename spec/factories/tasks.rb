FactoryBot.define do
  factory :task do
    title {"test"}
    start_time {"3000-01-01 00:00:00"}
    text {Faker::Lorem.sentence}
    category_id {2}
    rank_id {2}
    status_id {2}
    association :user
  end
end
