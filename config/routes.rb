Rails.application.routes.draw do
  get 'users/show' => 'users#show'
  devise_for :users
  root 'clothes#index'
  resources :clothes
end
