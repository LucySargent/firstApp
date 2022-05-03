Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  # the notation :users or :mircroposts is a symbol
  resources :microposts
  resources :users
  root 'users#index'

end
