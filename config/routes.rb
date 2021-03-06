Rails.application.routes.draw do
  
  devise_for :users
  root :to => 'public#home'

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'
  get 'public/about'
  get 'public/team'
  get 'public/listing'
  get 'public/listing_detail'
  get 'public/gallery'
  get 'public/cart'

  # resource :cart, only: [:show]
  resources :order_items, only: [:create, :destroy]

  resources :admin_users, :except => [:show] do
    member do
      get :delete
    end
  end

  resources :products do
    member do
      get :delete, :toggle_visible
    end
  end
  
  resources :listings do
    member do
      get :delete, :toggle_visible
    end
  end

  resources :teams do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
