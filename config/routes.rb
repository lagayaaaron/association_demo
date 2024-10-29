Rails.application.routes.draw do
  root "home#index"
  resources :authors, only: [ :index, :show ]
  resources :books, only: [ :index, :show ]
  resources :users, only: [ :index, :show ]
  resources :profiles, only: [ :index, :show ]
  resources :doctors, only: [ :index, :show ]
  resources :patients, only: [ :index, :show ]
  resources :physicians, only: [ :index, :show ]
  resources :appointments, only: [ :index, :show ]
  resources :suppliers, only: [ :index, :show ]
  resources :accounts, only: [ :index, :show ]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
