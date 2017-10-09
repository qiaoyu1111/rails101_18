Rails.application.routes.draw do
  devise_for :users
  # root 'welcome#index'
  root 'groups#index'
  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end

  namespace :account do
    resources :groups
    resources :posts
  end
end
