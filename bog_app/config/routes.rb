Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'creatures#index'

  get '/creatures', to: 'creatures#index', as: 'creatures'

  get '/creatures/new', to: 'creatures#new', as: 'new_creature'
  post '/creatures', to: 'creatures#create'
  get '/creatures/:id', to: 'creatures#show', as: 'creature'

  get '/creatures/:id/edit', to: 'creatures#edit', as: 'edit_creature'
  patch '/creatures/:id', to: 'creatures#update'
  delete '/creatures/:id', to: 'creatures#destroy'

  get '/signup', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'



end
