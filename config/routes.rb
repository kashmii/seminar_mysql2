Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :seminars, only: [:index, :show]
  resources :reservations, only: [:new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
end
