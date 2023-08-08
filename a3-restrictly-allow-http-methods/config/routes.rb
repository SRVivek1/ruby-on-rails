Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Allow request only for GET HTTP method
  match "/greet", to: "greeting#index", via: [:get]

  # With above request mapping only we can read all variables.
  # These are not required.

  #match "/greet/:user", to: "greeting#index", via: [:GET]
  #match "/greet/:user/:message", to: "greeting#index", via: [:GET]
  
  # without controller path
  get ":id", to: "greeting#show"

end
