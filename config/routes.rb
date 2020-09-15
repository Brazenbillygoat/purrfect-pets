Rails.application.routes.draw do
  # get 'pets/index'
  # get 'pets/show'
  # get 'static/welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "static#welcome"
  get "/pets", to: "pets#index"
  get "/pets/:id", to: "pets#show", as: "pet"
  get "/dogs", to: "pets#dog"
  get "/cats", to: "pets#cat"
  get "/birds", to: "pets#bird"


end
