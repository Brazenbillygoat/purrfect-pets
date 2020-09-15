Rails.application.routes.draw do
  get "/", to: "static#welcome"
  get "/pets", to: "pets#index"
  get "/pets/:id", to: "pets#show", as: "pet"
  get "/dogs", to: "pets#dog"
  get "/cats", to: "pets#cat"
  get "/birds", to: "pets#bird"
end
