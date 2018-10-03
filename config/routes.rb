Rails.application.routes.draw do

  devise_for :users
  resources :users, :only => [:show]
  root to: 'influencers#index'

  get '/my_jobs', to: 'jobs#index'
  get '/baby_boomers', to: 'influencers#baby_boomers'
  get '/generation_x', to: 'influencers#generation_x'
  get '/millennials', to: 'influencers#millennials'
  get '/generation_z', to: 'influencers#generation_z'


  resources :influencers, only: [:index, :show, :baby_boomers, :generation_x, :millennials, :generation_z] do
    resources :jobs, only: [:index, :show, :create, :new] do
          patch :update_job_state, on: :member
      resources :reviews, except: [:new, :show, :update]
    end
  end

  resources :orders, only: [:show, :create, :new] do
    resources :payments, only: [:new, :create]
  end
end
