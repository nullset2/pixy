Rails.application.routes.draw do
  devise_for :users
  resources :comments, except: [:index]
  get "/posts/catalog"
  resources :posts
  root to: "posts#index"
end
