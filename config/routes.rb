Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "homepage#home"
  get "about", to:"aboutpage#about"
  resources :articals, only: [:show]
end
