# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  # defining the about section
  get "about", to: "about#index"

  # Defines the root path route ("/")
  root to: "main#index"
end
