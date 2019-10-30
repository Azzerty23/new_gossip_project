Rails.application.routes.draw do

  root 'gossips#index'

  resources :users
  resources :gossips do
    resources :comments, :likes
  end
  resources :city, only: [:index, :show]

end
