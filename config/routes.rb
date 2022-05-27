Rails.application.routes.draw do
  resources :favorite_cards
  resources :credit_cards
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/auth", to: "users#show"
  # Defines the root path route ("/")
  # root "articles#index"
end
