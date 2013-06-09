Kaptive::Application.routes.draw do
  devise_for :admins

  match "/about_us" => "about#show", :via => :get, :defaults => { :id => '1' }

  resources :about, :only => [:edit, :show, :update]

  match '/products/list' => 'products#list'

  resources :products

  resources :metadata, :only => [:edit, :index, :show, :update]

  resources :contacts, :except => :edit

  resources :news

  root to: 'products#index'

  get "home/index"

end
