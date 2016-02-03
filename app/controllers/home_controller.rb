class HomeController < ApplicationController
  def index
    @twitt = Twitt.new
  end
end
