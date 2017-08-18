Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :coworks, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:create]
  end
  resources :bookings, only: [:index, :destroy]

  get "/dashboard/", to: "dashboard#index"


  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
