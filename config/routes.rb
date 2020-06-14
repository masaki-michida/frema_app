Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  get 'users/show'
  resources :users, only: :show
  resources :items, except: :show
end
