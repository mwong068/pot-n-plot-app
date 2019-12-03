Rails.application.routes.draw do
  # get 'sessions/new'
  resources :plants, only: [:index, :show]
  resources :gardens
  resources :users, only: [:new, :edit, :show, :create, :destroy]

  # root 'application#hello'
  get '/signup' => 'users#new', as: "signup"
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
