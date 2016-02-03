require 'rails_helper'

RSpec.describe TwittsController, type: :controller do
  login_user
  let(:twitt_text){"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut eni"}

  describe "POST create" do
    context 'when user is logged in' do
      it "creates a twitt", :js => true do
        expect{post :create, {twitt: {text: twitt_text}, :format => 'js'}}.to change(Twitt, :count).by(1)
        expect(response).to render_template(:new)
      end
    end
  end

end
