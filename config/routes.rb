Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers, controllers: {:registrations => 'customers/registrations', :sessions => 'customers/sessions'}
    sessions
  }
  resources :items
  get 'items/about'

  resources :orders
  resources :addresses
  resources :customers
  resources :cart_items
  get 'cart_items/info'
  get 'cart_items/confirm'
  get 'cart_items/thanks'
  namespace :admins do
    get 'customers/index'
    get 'customers/show'
    get 'customers/personal'
    get 'customers/edit'
    get 'customers/update'
  end
  namespace :admins do
    get 'orders/index'
    get 'orders/today'
    get 'orders/update'
  end
  namespace :admins do
    get 'genres/index'
    get 'genres/edit'
    get 'genres/update'
    get 'genres/create'
  end
  namespace :admins do
    get 'items/index'
    get 'items/create'
    get 'items/new'
    get 'items/show'
    get 'items/edit'
    get 'items/update'
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
