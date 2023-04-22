Rails.application.routes.draw do
  scope path: '/pixy' do
    devise_for :users
    resources :comments, except: [:index]
    resources :posts
    root to: "posts#index"
  end
end
