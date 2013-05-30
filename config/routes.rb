Kaptive::Application.routes.draw do
  devise_for :admins

  resources :about

  resources :products
  match 'gestor' => 'products#gestor'
  resources :metadata

  resources :contacts

  resources :news

  root to: 'products#index'

  get "home/index"

end
