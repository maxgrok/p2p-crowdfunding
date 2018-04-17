Rails.application.routes.draw do
  resources :projects
  resources :pledges
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
