Rails.application.routes.draw do
  resource :menu, only: [:show]
  resources :orders
  
  devise_for :users
  get "welcome/index"
  get "welcome/about"
  get "welcome/contact"

  root "welcome#index"
end
