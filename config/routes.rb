Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'pages/home'
  get 'pages/contracts'
  get 'pages/myservices'

  root to: 'pages#home'
  resources :users, only: [:new, :edit, :update, :create, :show, :destroy] do
    resources :contracts, only: [:index]
  end
  resources :services do
    resources :contracts, only: [:create]
  end

  resources :contracts, only: [:show]

  mount Attachinary::Engine => "/attachinary"

  get 'contracts/:id/accepted' => 'contracts#mark_as_accepted', as: :accept_contract
  get 'contracts/:id/declined' => 'contracts#mark_as_declined', as: :decline_contract
end
