Rails.application.routes.draw do
  get 'todo/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "todo#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
