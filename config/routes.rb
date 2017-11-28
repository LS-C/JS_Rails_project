Rails.application.routes.draw do
  resources :orders
  resources :users
  resources :items
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
