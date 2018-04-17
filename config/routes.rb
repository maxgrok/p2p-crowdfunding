Rails.application.routes.draw do
  resources :categories
  resources :projects
  resources :pledges
  resources :users
  resources :category
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
