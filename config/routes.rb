Rails.application.routes.draw do
  devise_for :authors

  # Defines the root path route ("/")
  root "authors#index"
  resources :authors do
    resources :posts do
      resources :comments
      resources :likes, only: [:create, :destroy]
    end
  end

   # API ROUTES
  namespace :api do # /api
    namespace :v1 do # /api/v1
      resources :authors do # api/v1/users
        resources :posts, format: :json do # api/v1/users/:user_id/posts
          resources :comments, format: :json # api/v1/users/:user_id/posts/:post_id/comments
        end
      end
    end
  end
  post "/login", to: "authors#login"
  
end
