Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :profiles
  resources :trips
  resources :users
end
