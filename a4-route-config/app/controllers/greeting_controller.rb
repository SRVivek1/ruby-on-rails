class GreetingController < ApplicationController
  

  def index
    # request parameter
    @username = params[:user]

    puts @username
  end


end
