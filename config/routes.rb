Rails.application.routes.draw do
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  # get '/*a', to: 'application#not_found'

  concern :api_base do
    get "destinations/random" => 'destinations#random'
    resources :destinations do
      resources :reviews
    end
  end

  namespace :v1 do
    concerns :api_base
  end
end
