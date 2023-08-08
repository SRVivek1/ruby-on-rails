class GreetingController < ApplicationController

    # index function
    def index
        @username = params[:user]
        @greeting = params[:message]
    end

    # url pattern ":id"
    def show
        @requestId = params[:id]
    end
end
