Rails.application.routes.draw do
  get 'order/index'
  root 'clothes#index'

  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_scope :admin do
    post 'admins/guest_sign_in', to: 'admins/sessions#guest_sign_in'
  end

  devise_for :retailers, controllers: {
    sessions: 'retailers/sessions',
    passwords: 'retailers/passwords',
    registrations: 'retailers/registrations'
  }

  devise_scope :retailer do
    post 'retailers/guest_sign_in', to: 'retailers/sessions#guest_sign_in'
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  get 'users/show', to: 'users#show'
  get 'retailers/show/:id', to: 'retailers#show', as: 'retailers'

  resources :clothes
  resources :favorites, only: [:create, :destroy, :index]
  resources :carts, only: [:create, :destroy, :index, :update] do
    get :purchase
    get :pay
    patch :pay
    get :complete
    post :complete
  end

end
