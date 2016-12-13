Rails.application.routes.draw do

  get '/', to: 'pages#index'

  post '/register', to: 'users#create'
  post '/login', to: 'users#login'
  delete '/logout', to: 'users#logout'

  get '/profile', to: 'users#profile'
  put '/users/:id', to: 'users#update'
  
end
