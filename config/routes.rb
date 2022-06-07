Rails.application.routes.draw do
  resources :notes
  resources :dry_rooms
  resources :strains
  resources :users
  
  get '/' => 'sessions#home'
  get '/login' => 'sessions#new'
  post '/login' 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/logout' => 'sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
