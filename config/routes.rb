Rails.application.routes.draw do
  get 'todo/index'
  post 'todo/index'
  post 'todo/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "todos#index"

  resources :todos
  # Defines the root path route ("/")
  # root "articles#index"
end
