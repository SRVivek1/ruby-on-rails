# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Reading HTTP parameter
* Steps:
    1. define request parameter in routing [config/routes.rb]
        -->  get "/home/:user", to: "homepage#index"
        --> In current observation I have found that to make "/home/:user" url pattern work, we have to define it's  base URL pattern as well.
            -->> get "/home/", to: "homepage#index"
        -->  Here ':user' is a request parameter URL eg. 'http://.../home?user=vivek'

        --> following and example to defining multiple request paramsters.
        --> get "/profile", to: "homepage#show"
        --> get "/profile/:user/:passwd", to: "homepage#show"


    2. Read the parameter in controller
        -->  @username = params[:user]  
        --> # read request parameter.

    3. Use the variable cretaed in controller to show the data.
        --> Hello Mr. <%= @username %>
        --> # Print username variable initialized in homapge controller.
