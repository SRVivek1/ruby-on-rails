class HomepageController < ApplicationController

        def index
            # read request parameter.
            @username = params[:user]
        end
end