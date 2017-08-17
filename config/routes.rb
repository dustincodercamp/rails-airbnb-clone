Rails.application.routes.draw do

  get "items/listing", to: "items#listing"

  resources :items

  devise_for :users,
  # custom added FB Callback
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
