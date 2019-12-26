Rails.application.routes.draw do

  devise_for :customers, controllers: {:registrations => 'customers/registrations', :sessions => 'customers/sessions'}
  devise_for :admins, controllers: {:sessions => 'admins/sessions'}

  # redirect_toにてsign_outを使用するために必要
  devise_scope :customer do
    get '/customers/sign_out' => 'devise/sessions#destroy'
  end

  # Aboutページ用
  get 'items/about'

  # Customerトップでのジャンル指定用
  get 'items/genre/:id' => 'items#index', as: 'items_genre'

  resources :items
  resources :orders
  # CUstomer退会確認画面用
  get 'customers/exit'
  resources :customers

  resources :addresses
  resources :order_items

  get 'cart_items/info'
  post 'cart_items/confirm'
  get 'cart_items/confirm'
  get 'cart_items/thanks'
  resources :cart_items do
    collection do
      delete :empty
    end
  end

  root 'items#index'


  namespace :admins do
    resources :customers
  end

  namespace :admins do
    resources :orders
  end

  namespace :admins do
    resources :genres
  end

  namespace :admins do
    resources :items

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
end
