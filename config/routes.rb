Rails.application.routes.draw do
  resources :completeds
  resources :completed_tasks
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post "/login", to: "auth#create"
      get "/profile", to: "users#profile"
      get "/users", to: "users#index"
    end
  end
  namespace :api do
    namespace :v1 do
      resources :tasks
    end
  end
  namespace :api do
    namespace :v1 do
      resources :completeds
        end
  end
  
end
