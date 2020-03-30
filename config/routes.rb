Rails.application.routes.draw do
  resources :users
  root to: "spaces#index"
end
