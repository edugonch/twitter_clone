require 'rails_helper'

describe "adding a new twitt" do
  fixtures :all
  before(:each) do 
  	user = FactoryGirl.create(:user)
	login_as(user, :scope => :user)
  end
  it "can add and show a twitt" do
    visit root_path
    fill_in "twitt[text]", with: "Test twitt"
    click_on "Twitt!"
    expect(page).to have_selector(".twitt", text: "Test twitt")
  end
end