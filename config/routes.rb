Rails.application.routes.draw do

  resources :plants, only: [:index, :show]
  resources :gardens
  resources :users, only: [:new, :edit, :show, :create, :destroy, :update]
  resources :garden_plants, only: [:create, :edit, :destroy]
  resources :friendships, only: [ :create, :new, :destroy]


  root 'application#index'
  get '/signup' => 'users#new', as: "signup"
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  
  delete '/logout' => 'sessions#destroy' 
  # get '/gardens/:id?water', to: 'gardens#show', as: "water"
  # post '/gardens/:id?water', to: 'gardens#show', as: "water"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
