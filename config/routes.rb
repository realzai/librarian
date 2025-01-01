Rails.application.routes.draw do
  get "sign_up", to: "users#new", as: :new_user
  post "sign_up", to: "users#create", as: :create_user
  get "sign_in", to: "sessions#new", as: :new_session
  delete "sign_out", to: "sessions#destroy", as: :sign_out

  resources :sessions, except: [ :destroy, :new ]
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  resources :dashboard, only: [ :index ]
  resources :profile, only: [ :index, :show, :new, :create ]
  resources :books
  resources :genres, only: [ :index ]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "pages#index"
end
