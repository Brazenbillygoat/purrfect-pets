Rails.application.routes.draw do
  get 'static/welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "static#welcome"
  get "/pets", to: "static#index"

end
