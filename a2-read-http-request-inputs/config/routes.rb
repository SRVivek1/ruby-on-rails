Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Shorthand for URL mapping

  get "/home", to: "homepage#index"
  
  # Here ':user' is a request parameter URL eg. '.../home?user=vivek'
  get "/home/:user", to: "homepage#index"


end
