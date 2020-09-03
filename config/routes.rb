Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/users', to: 'users#index'
    end
  end
    namespace :api do
    namespace :v1 do
      get '/tasks', to: 'tasks#index'
      post '/tasks', to: 'tasks#create'
    end
end
end
