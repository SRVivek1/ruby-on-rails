Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Shorthand for URL mapping

  get "/home", to: "homepage#index"
  
  # Here ':user' is a request parameter URL eg. '.../home?user=vivek'
  # This is optional
  get "/home/:user", to: "homepage#index"

  # Received multiple request parameters
  get "/profile", to: "homepage#show"

  # This mapping is optional '/profile' mapping will read the given request parameters
  get "/profile/:user/:passwd", to: "homepage#show"

end
