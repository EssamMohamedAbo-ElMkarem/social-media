Rails.application.routes.draw do
  get "reacts/create"
  resources :posts do
    resources :comments, only: [ :new, :create ], module: :posts
  end
  resource :feed, only: [ :show ], controller: "feed"
  resources :chats, only: [ :index ]

  namespace :chats do
    resource :user_search, only: [ :create ], controller: :user_search
    resources :chat_requests, only: [ :new ] do
      post "create_message", to: "chat_requests#create_message", as: "create_message"
    end
  end
  resources :messages, only: [ :create ]
  post "/reacts", to: "reacts#create"
  devise_for :users
  get "pages/home"
  get "pages/about"
  get "pages/tos"
  get "pages/privacy-policy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  authenticated :user do
    root to: "feed#show", as: :authenticated_user_root
  end
  # Defines the root path route ("/")
  root "pages#home"
  # match "*path", to: "errors#not_found", via: :all
end
