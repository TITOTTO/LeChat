Rails.application.routes.draw do
<<<<<<< HEAD
  get 'cartfull/create'
=======

  resources :orders, only: [:new, :create]

>>>>>>> 56d040c2d94458e3db3c7f7d67d2e28035c6a89d
  resources :profiles do
    resources :carts, except: [:index, :new, :edit]
    resources :avatars, only: [:create, :destroy]
  end
  resources :cartfull  
  resources :comments
  resources :articles
  devise_for :users
  root to: 'articles#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
