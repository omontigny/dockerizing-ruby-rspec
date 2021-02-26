FactoryBot.define do
  factory :comment do
    content { "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam" }

  factory :comment_empty do
    content { "" }
  end
  end
end
