Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :coworks, only: [:index, :show]
  get '/bookings/', to: 'bookings#index'
  post '/coworks/:id', to: 'bookings#create'
  delete '/bookings/:id', to: 'bookings#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
