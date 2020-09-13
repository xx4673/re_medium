Rails.application.routes.draw do
  devise_for :users, controllers: {
  registrations: 'users/registrations'
    }
  
  namespace :api do
    resources :users, only: [] do
      member do
        post :follow
      end
    end
    
    resources :stories ,only: [] do 
      member do
        post :clap
      end
    end    
  end  

  resources :stories do 
    resources :comments, only: [:create]
  end

  root 'pages#index'

  get '@:username/:story_id', to: 'pages#show', as: 'story_page'
  get '@:username', to: 'pages#user', as: 'user_page'
  
  get "/demo", to: 'pages#demo'
  get "/hello", to: 'pages#hello'
end
