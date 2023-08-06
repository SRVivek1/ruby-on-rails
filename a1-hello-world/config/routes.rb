Rails.application.routes.draw do
  
  # Map root URL to greeting#index
  root "greeting#index"

  # Map incoming Get reques to Greeting controller's index method.
  get "/greet", to: "greeting#index"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
