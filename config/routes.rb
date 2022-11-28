Rails.application.routes.draw do
  get 'join_table_articles_carts/create'
  get 'join_table_articles_carts/uptdate'
  get 'join_table_articles_carts/destroy'
  get 'carts/show'
  get 'carts/create'
  get 'carts/uptdate'
  get 'carts/destroy'
  resources :comments
  resources :articles
  devise_for :users
  root to: 'articles#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
