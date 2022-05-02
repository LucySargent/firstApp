Rails.application.routes.draw do
  # the notation :users is a symbol
  resources :users
  root 'users#index'

end
