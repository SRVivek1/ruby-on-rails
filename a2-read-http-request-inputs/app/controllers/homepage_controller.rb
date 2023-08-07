class HomepageController < ApplicationController

        def index
            # read request parameter.
            @username = params[:user]
        end

        def show
            # read request parameter.
            @username = params[:user]
            @password = params[:passwd]
        end
end