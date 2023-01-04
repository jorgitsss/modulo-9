Rails.application.routes.draw do
  resources :labels
  resources :references
  resources :publications
  devise_for :users
  resources :products
  resources :brands
  resources :articles
  root "products#menu"
end
