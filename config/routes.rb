Rails.application.routes.draw do
  resources :reservations
  resource :menu, only: [:show]
  resources :orders
  
  devise_for :users
  get "welcome/index"
  get "welcome/about"
  get "welcome/contact"

  root "welcome#index"
end
