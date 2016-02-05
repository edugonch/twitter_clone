FactoryGirl.define do
  factory :twitt do
  	text { Faker::Company.name }
  	user
  end
end
