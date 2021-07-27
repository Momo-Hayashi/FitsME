Rails.application.routes.draw do
  get 'retailers/show'
  root 'clothes#index'
  resources :clothes

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
  get 'retailers/show', to: 'retailers#show'

end
