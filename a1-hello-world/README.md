# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* MVC Resources
* Controller
    1. Create a new controller .rb file inside 'app/controllers' directory
    2. Create a new function 'index' to process the request.
    3. In this app we have created a controller named 'Greeting'.
        --> Note: rails will add '_controller' in controller name by convention.

* View
    1. Create a new directory inside 'app/views' directory same as controller name.
    2. In this app we have created the directory 'greeting' as per controller name.
    3. Now create a new '.erb' file in given format controller-function-name.html.erb.
        --> In this app we have created the file 'index.html.erb'

* Router
    1. Location: APP/config/routers.rb
    2. add new a new entry to map url with controller's function
    3. Mapping format : HTTP_METHOD 'urlPatter', to: 'controller#function'
        --> in this case [get "/greet", to: "greeting#index"]


