Rails.application.routes.draw do
  get 'menu' => 'menu#menu'
  get 'menu/order'

  devise_for :users
  get "welcome/index"
  get "welcome/about"
  get "welcome/contact"

  root "welcome#index"
end
