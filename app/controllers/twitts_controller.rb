class TwittsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def create
    twitt = Twitt.new(twitt_params)
    twitt.user = current_user
    twitt.save
    render 'new'
  end

private
  def twitt_params
    params.require(:twitt).permit(:text)
  end
end
