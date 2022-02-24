Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spacecrafts do
    member do
      get :user
    end
    resources :bookings, only: [:new, :create]
  end

  resources :users do
    resources :bookings, only: [:show]
  end
end
