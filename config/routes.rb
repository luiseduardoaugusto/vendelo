Rails.application.routes.draw do
  # delete 'products/:id', to: 'products#destroy', as: :delete_product
  # get 'products/new', to: 'products#new', as: :new_product
  # post 'products', to: 'products#create'
  # get 'products/:id/edit', to: 'products#edit', as: :edit_product
  # patch 'products/:id', to: 'products#update'
  # get 'products/index'
  # get 'products/:id', to: 'products#show', as: :product
  # get 'products', to: 'products#index'
  resources :products
  root to: 'products#index'
  
end
