Rails.application.routes.draw do
  resources :notes
  resources :dry_rooms
  resources :strains
  resources :users

  get '/signup' => 'users#new'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
