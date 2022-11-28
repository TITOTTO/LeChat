Rails.application.routes.draw do
  resources :join_table_items_carts, only: [:create, :update, :destroy]
  resources :carts, except: [:index, :new, :edit]
  resources :comments
  resources :articles
  devise_for :users
  root to: 'articles#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
