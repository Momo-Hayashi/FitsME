Rails.application.routes.draw do
  root 'clothes#index'

  devise_for :admins, controllers: {
    registrations: 'admins/registrations'
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

  get 'users/show', to: 'users#show'
  get 'retailers/show/:id', to: 'retailers#show', as: 'retailers'

  resources :clothes
  resources :favorites, only: [:create, :destroy, :index]
  resources :carts, only: [:create, :destroy, :index, :update] do
    get :purchase
    get :pay
    post :pay
  end

end
