require 'rails_helper'

RSpec.describe Twitt, type: :model do
  before(:each) do
    @user =  FactoryGirl.build(:user)
    @user.save
  end

  it "should fail if the twitt have no user" do
    twitt = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut eni"
    expect(FactoryGirl.build(:twitt, text: twitt, user: nil)).to_not be_valid
  end

  it "expects an empty twitt creation to fail" do
    expect(FactoryGirl.build(:twitt, text: '', user: @user)).to_not be_valid
  end

  it "expects to fail with a text bigger than 130 chars" do
    twitt = """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
      ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
      occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo
inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut
fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,
consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum
exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil
molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
    """
    expect(FactoryGirl.build(:twitt, text: twitt, user: @user)).to_not be_valid
  end

  it "expects to create a 130 chars twitt successfully" do
    twitt = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut eni"
    expect(FactoryGirl.build(:twitt, text: twitt, user: @user)).to be_valid
  end

end
