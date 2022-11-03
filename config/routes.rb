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
end
