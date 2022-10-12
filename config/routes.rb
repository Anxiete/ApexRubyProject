Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "legends#main"
  resources :legends
  get "/about", to: "legends#about", as: "aboutproject"
  get "/roles", to: "legends#roles", as: "legendrole"
  get "/home", to: "legends#main", as: "homepage"
end
