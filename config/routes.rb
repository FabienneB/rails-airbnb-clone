Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :coworks, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy]

  get "/dashboard/", to: "dashboard#index"
  put "/accept_booking/:id", to: "bookings#mark_as_accepted", as: :accepted
  put "/reject_booking/:id", to: "bookings#mark_as_rejected", as: :rejected


  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
