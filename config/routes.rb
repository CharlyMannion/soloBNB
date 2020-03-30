Rails.application.routes.draw do
  # get 'listings/new'
  # get 'listings/create'
  # get 'listings/destroy'
    # get 'sessions/new'
    # get 'sessions/create'
    # get 'sessions/destroy'

  root 'spaces#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :listings, only: [:index, :show, :new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
