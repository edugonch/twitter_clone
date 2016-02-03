require 'rails_helper'

describe "adding a new twitt" do
  fixtures :all
  it "can add and show a twitt" do
    visit root_path
    fill_in "Twitt", with: "Test twitt"
    click_on "Create Twitt"
    expect(page).to have_selector(".twitt", text: "Test twitt")
  end
end