Rails.application.routes.draw do
  get 'demo/show'
  get 'demo', to: 'demo#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "demo#index"

  get "/demo/error", to: "demo#error"
end
