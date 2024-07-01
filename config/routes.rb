Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'monsters#index'

  resources :monsters, param: :name, only: [:index, :show] do
    get '/page/:page', action: :index, on: :collection
  end

  resources :locations, param: :name, only: [:index, :show] do
    get '/page/:page', action: :index, on: :collection
  end

  resources :ailments, param: :name, only: [:index, :show] do
    get '/page/:page', action: :index, on: :collection
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
