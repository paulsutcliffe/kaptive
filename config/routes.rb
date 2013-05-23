Kaptive::Application.routes.draw do
  devise_for :admins

  resources :about

  resources :products

  resources :metadata

  resources :contacts

  resources :news

  root to: 'products#index'

  get "home/index"

end
