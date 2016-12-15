Rails.application.routes.draw do

  get '/', to: 'pages#index'

  post '/register', to: 'users#create'
  post '/login', to: 'users#login'
  delete '/logout', to: 'users#logout'

  get '/profile', to: 'users#profile'
  put '/users/:id', to: 'users#update'

  get '/events/new', to: 'events#new'
  post '/events', to: 'events#create'
  get '/events', to: 'events#search'
  get '/events/:id', to: 'events#show'
  get '/events/:id/edit', to: 'events#edit'
  put '/events/:id', to: 'events#update'
  delete '/events/:id', to: 'events#destroy'

  post '/attendees/:id', to: 'attendees#join'
  delete 'attendees/:id', to: 'attendees#leave'

end
