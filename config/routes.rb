Rails.application.routes.draw do
  devise_for :authors
root 'authors#index'
  resources :authors, only: %i[index show] do
    resources :posts, only: %i[index show]
  end

  resources :posts, only: %i[new create update destroy] do
    resources :comments
    resources :likes
  end
  # get 'posts/index'
  # get 'posts/show'
  # get 'authors/index'
  # get 'authors/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
