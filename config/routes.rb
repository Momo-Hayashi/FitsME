Rails.application.routes.draw do
  devise_for :users
  root 'clothes#index'
  resources :clothes
end
