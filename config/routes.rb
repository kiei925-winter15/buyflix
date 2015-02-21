Rails.application.routes.draw do

  resources :movies
  resources :actors
  resources :users
  resources :sessions

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

  root to: "movies#index"

end
