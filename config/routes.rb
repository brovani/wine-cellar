Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :merchants, only: [:create, :index, :destroy]
  resources :storages, only: [:create, :index, :destroy]
  resources :cases, only: [:create, :index, :destroy]
  resources :bottles, only: [:create, :index, :destroy]
  resources :wines, only: [:create, :index, :destroy] do
    resources :reviews, only: [ :new, :create ]
    end
end
