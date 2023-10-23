Rails.application.routes.draw do
  root to: 'home#index'

  resources :genres, only: [:new, :create, :show]

  resources :directors, only: [:new, :create, :show]

  resources :movies, only: [:new, :create, :show]
end
