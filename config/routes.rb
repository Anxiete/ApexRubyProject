Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "legends#main"
  resources :legends, :roles

  get "/about", to: "legends#about", as: "aboutproject"
  get "/home", to: "legends#main", as: "homepage"
end