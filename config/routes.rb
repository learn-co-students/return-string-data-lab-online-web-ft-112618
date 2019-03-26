Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products
  get '/product/:id/inventory', to: 'products#inventory'
  get '/product/:id/description', to: 'products#description'
end
