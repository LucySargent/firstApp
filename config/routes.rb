Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  
  # the notation :users or :mircroposts is a symbol
  resources :microposts
  resources :users
  root 'application#hello'
end
