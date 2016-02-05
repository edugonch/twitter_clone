FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    username { Faker::Internet.user_name }
    name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    password "password"
    password_confirmation "password"
    confirmed_at Date.today
    factory :user_with_twitts do
    	transient do
        	twitts_count 5
      	end
    	after(:create) do |user, evaluator|
        	create_list(:twitt, evaluator.twitts_count, user: user)
      	end
    end
  end
end
