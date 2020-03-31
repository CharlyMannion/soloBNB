Rails.application.routes.draw do
  root 'spaces#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :listings, only: [:index, :show, :new, :edit, :update, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
