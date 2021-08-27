Rails.application.routes.draw do
  root 'tops#index'

  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :retailers, controllers: {
    sessions: 'retailers/sessions',
    passwords: 'retailers/passwords',
    registrations: 'retailers/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  devise_scope :admin do
    post 'admins/guest_sign_in', to: 'admins/sessions#guest_sign_in'
  end

  devise_scope :retailer do
    post 'retailers/guest_sign_in', to: 'retailers/sessions#guest_sign_in'
  end

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  get 'users/show', to: 'users#show'
  get 'retailers/show/:id', to: 'retailers#show', as: 'retailers'
  get 'retailers/orders', to: 'retailers#orders'
  get 'retailers/orders/:id/detail', to: 'retailers#detail', as: 'retailers/orders/detail'

  resources :favorites, only: %i[ create destroy index]
  resources :addresses, only: [:destroy]
  resources :categories, only: [:show]
  resources :orders, only: %i[ index show ]
  resources :clothes do
    post 'confirm', on: :collection
    resources :reviews do
      post 'confirm', on: :collection
    end
  end
  get '/users/reviewable', to: 'reviews#index'

  resources :carts, only: %i[ create destroy index update ] do
    get :confirm
    post :confirm
    get :pay
    post :pay
    post :complete
  end

end
