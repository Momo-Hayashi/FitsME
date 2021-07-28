Rails.application.routes.draw do
  resources :clothes
  root 'clothes#index'

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
