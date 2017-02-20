require 'random_data'

FactoryGirl.define do
  factory :comment do
    body RandomData.random_paragraph
    post_id
    user_id
  end
end
