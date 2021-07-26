Rails.application.routes.draw do
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
  get 'users/show' => 'users#show'

end
