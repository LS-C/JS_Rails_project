Rails.application.routes.draw do
  resources :orders
  resources :items
  resources :users do
    resources :items
  end



  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
