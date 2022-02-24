Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :nfts do
    resources :rentals, only: [:new, :create]
  end
  resources :rentals, only: [:index, :destroy]
  # get "rentals", to: "pages#rentals"
end
