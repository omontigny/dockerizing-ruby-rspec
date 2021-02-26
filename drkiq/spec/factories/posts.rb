FactoryBot.define do
  factory :post do
    comments_count { 0 }
    sequence(:name) { |i| "Title #{i}"}
  end
end
