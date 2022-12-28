Rails.application.routes.draw do
  resources :products
  resources :brands
  root "products#index"
end
