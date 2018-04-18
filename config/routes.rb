Rails.application.routes.draw do
  resources :categories
  resources :projects
  resources :pledges
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/about', to: "home#about"
  get '/login', to: "home#login"
  get '/delete', to: "users#index", as: "delete_user"
  get '/delete', to: "categories#index", as: "delete_category"
  get '/admin', to:'home#admin', as: "admin"
end
