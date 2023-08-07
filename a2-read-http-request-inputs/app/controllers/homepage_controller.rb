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


        def photos
            # read id and default param
            @photoId = params[:id]
            @app = params[:app]
        end

end

