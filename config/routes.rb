Rails.application.routes.draw do

  resources :charges
  resources :genres

  resources :movies do
    resources :reviews
  end
  resources :actors
  resources :users
  resources :sessions

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

  root to: "movies#index"

end
