Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index] do
        resources :follows, only: [:create, :destroy]
        resources :follows, only: [:index]
      end
      resource :user, only: [:create, :update, :destroy] 
   
 
      resource :session, only: :create
      resources :proclamations do
        resources :comments, only: [:index, :create]
      end
    end
  end
  
end