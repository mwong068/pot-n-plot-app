Rails.application.routes.draw do
  # get 'sessions/new'
  resources :plants, only: [:index, :show]
  resources :gardens
  resources :users, only: [:new, :edit, :show, :create, :destroy]

  # root 'application#hello'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
