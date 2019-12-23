Rails.application.routes.draw do
  devise_for :customers, controllers: {:registrations => 'customers/registrations', :sessions => 'customers/sessions'}
  devise_for :admins, controllers: {:sessions => 'admins/sessions'}

  resources :items
  get 'items/about'
  # Customerトップでのジャンル指定用
  get 'items/genre/:id' => 'items#index', as: 'items_genre'

  resources :customers
  resources :addresses
  resources :cart_items
  get 'cart_items/info'
  get 'cart_items/confirm'
  get 'cart_items/thanks'

  namespace :admins do
    resources :customers
    # get 'customers/index'
    # get 'customers/show'
    # get 'customers/personal'
    # get 'customers/edit'
    # get 'customers/update'
  end

  namespace :admins do
    resources :orders
    # get 'orders/index'
    # get 'orders/today'
    # get 'orders/update'
  end

  namespace :admins do
    resources :genres
    # get 'genres/index'
    # get 'genres/new'
    # get 'genres/edit'
    # patch 'genres/update'
    # post 'genres/create'
  end

  namespace :admins do
    resources :items
    # get 'items/index'
    # get 'items/create'
    # get 'items/new'
    # get 'items/show'
    # get 'items/edit'
    # get 'items/update'
  end
  get 'admins/top'

  namespace :device do
    get 'registrations/new'
    get 'registrations/create'
    get 'registrations/destroy'
  end

  namespace :admins do
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
