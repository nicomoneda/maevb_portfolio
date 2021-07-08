Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'posts#index'
  resources :posts
  # get '/new', to: 'posts#new', as: 'new_post'
  # # resources :posts, only: :create
  # # resources :posts
  # post '/', to: 'posts#create'

  # get '/:category', to: 'posts#index', as: 'posts_category' # Able to see posts of one category (Illustrations, Animatios or Game Arts)
  # get '/:id', to: 'posts#show', as: 'post' # Able to see details of one post


  # get '/:id/edit', to: 'posts#edit'
  # patch '/:id', to: 'posts#update'

  # delete '/:id', to: 'posts#destroy'
end
