Rails.application.routes.draw do
    
  get '/greet', to: 'greeting#index'

  # It will bind the value after '/greet/' to a variable 'user'
  get '/greet/*user', to: 'greeting#index'

  # Redirect to greet - ':user' will be read and sent to greet/*user
  get '/hello/:user', to: redirect(status: 302, path: '/greet/%{user}')
  


  # Redirect to intenal url


  # Redirect URLs with request params
  get '/google/:query', to: redirect { |path_params, req| "https://google.com/search?q=#{path_params[:query].pluralize}" }
  get '/stories/:name', to: redirect { |path_params, req| "/greet/#{path_params[:name].pluralize}" }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
