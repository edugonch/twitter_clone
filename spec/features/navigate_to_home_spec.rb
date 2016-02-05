require 'rails_helper'

describe "navigate to home" do
  fixtures :all
  before(:each) do 
  	@user = FactoryGirl.create(:user)
	  login_as(@user, :scope => :user)
  end
  it "can see the twitts" do
    user = FactoryGirl.create(:user_with_twitts)
    visit root_path
    expect(page).to have_selector(".twitt", count: 5)
  end
end