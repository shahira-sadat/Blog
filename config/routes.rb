Rails.application.routes.draw do
root 'authors#index'
  resources :authors, only: [:index, :show] do
    resources :posts, only: [:index, :new, :create, :show] do
      resources :comments, only: [:new, :create] 
        resources :likes, only: [ :create] 
    end
  end
  # get 'posts/index'
  # get 'posts/show'
  # get 'authors/index'
  # get 'authors/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
