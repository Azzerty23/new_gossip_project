Rails.application.routes.draw do

  root 'pages#welcome'

  resources :users
  resources :gossips do
    resources :comments
    resources :likes, except: [:update]
  end
  resources :cities, only: [:index, :show]
  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'pages#login'
  post '/login', to: 'pages#welcome'
  post '/session', to: 'pages#welcome'

end
