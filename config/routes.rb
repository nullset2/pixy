Rails.application.routes.draw do
  devise_for :users
  resources :comments, except: [:show, :index]
  resources :posts, except: [:show]
  root to: "posts#index"
end
