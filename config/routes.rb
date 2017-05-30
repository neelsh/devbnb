Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'

  root to: 'pages#home'
  resources :users, only: [:new, :edit, :update, :create, :show, :destroy]
  resources :services do
    resources :contracts, only: [:new, :create]
  end
end
