Rails.application.routes.draw do
  resources :products
  resources :brands
  resources :articles
  root "products#menu"
end
