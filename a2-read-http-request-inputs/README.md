# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Reading HTTP parameter
* Steps:
    1. define request parameter in routing [config/routes.rb]
        -->  get "/home/:user", to: "homepage#index"
        -->  Here ':user' is a request parameter URL eg. '.../home?user=vivek'

    2. Read the parameter in controller
        -->  @username = params[:user]  
        --> # read request parameter.

    3. Use the variable cretaed in controller to show the data.
        --> Hello Mr. <%= @username %>
        --> # Print username variable initialized in homapge controller.
