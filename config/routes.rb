Rails.application.routes.draw do
  get 'static/welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/home", to: "static#welcome"

end
