Rails.application.routes.draw do
    
  get '/greet', to: 'greeting#index'


  # It will bind the value after '/greet/' to a variable 'user'
  get '/greet/*user', to: 'greeting#index'


  # Redirect to greet - ':user' will be read and sent to greet/*user
  get '/hello/:user', to: redirect(status: 302, path: '/greet/%{user}')
  

  # Redirect URLs with request params
  get '/google/:query', to: redirect { |path_params, req| "https://google.com/search?q=#{path_params[:query]}" }
  

  # Without request variable
  get '/search/:query', to: redirect { |path_params| "https://google.com/search?q=#{path_params[:query]}" }

  
  # .pluralize - replaces the parameter with it's plural word.
  get '/stories/:name', to: redirect { |path_params, req| "/greet/#{path_params[:name].pluralize}" }


  # Overriding the Named Route Helpers
  resources :greeting, as: 'welcome'
  # routes : welcome_index_path	  GET 	/greeting(.:format) x	greeting#index


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
