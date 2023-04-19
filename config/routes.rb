Rails.application.routes.draw do
  scope path: '/pixy' do
    devise_for :users
    resources :comments, except: [:show, :index]
    resources :posts, except: [:show]
    root to: "posts#index"
  end
end
