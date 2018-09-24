Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/my_jobs', to: 'jobs#index'



  resources :influencers, only: [:index, :show] do
    resources :jobs, only: [:index, :show, :create, :new] do
      resources :reviews, except: [:new, :show, :update]
    end
  end

  resources :orders, only: [:show, :create, :new] do
    resources :payments, only: [:new, :create]
  end
end
