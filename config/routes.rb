Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews/create'
  # get 'reviews/edit'
  # get 'reviews/destroy'
  # get 'jobs/index'
  # get 'jobs/show'
  # get 'jobs/create'
  # get 'influencers/index'
  # get 'influencers/show'
  # devise_for :users
  devise_for :users
  root to: 'pages#home'

  resources :influencers, only: [:index, :show] do
    resources :jobs, only: [:index, :show, :create, :new] do
      resources :reviews, except: [:new, :show, :update]
    end
  end
end
