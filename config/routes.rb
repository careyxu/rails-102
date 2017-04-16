Rails.application.routes.draw do
  devise_for :users
  resources :groups do
    member do
      post :join
      post :quit
    end

    namespace :account do
      resources :groups
    end
    
    end
    resources :posts
  end
  root 'groups#index'
end
