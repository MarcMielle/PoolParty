Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :swimming_pools, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [:index]

  namespace :owner do
    resources :reservations, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

