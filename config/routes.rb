Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/profile", to: "pages#profile"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :requests do
      resources :offers, only: [:create]
    end
    resources :offers , only: [:show, :update]
      # resources :offers
end
