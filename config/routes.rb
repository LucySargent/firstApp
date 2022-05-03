Rails.application.routes.draw do
  # the notation :users or :mircroposts is a symbol
  resources :microposts
  resources :users
  root 'users#index'

end
