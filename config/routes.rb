Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users, only: [:new, :edit, :update, :create, :show, :destroy]
  resources :services do
    resources :contracts, only: [:new, :create]
  end
end
