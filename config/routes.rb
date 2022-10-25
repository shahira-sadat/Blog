Rails.application.routes.draw do
root 'authors#index'
  resources :authors, only: [:index, :show] do
    resources :posts, only: [:index, :show] do
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
