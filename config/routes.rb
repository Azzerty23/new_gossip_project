Rails.application.routes.draw do

  root 'pages#welcome'

  resources :users
  resources :gossips do
    resources :comments
    resources :likes, except: [:update]
  end
  resources :cities, only: [:index, :show]

  get '/login', to: 'pages#login'

end
