Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Create routes to Index where we will search for the trips and
  # /search page where we will get the results
  root to: 'trips#index'
  get '/search', to: 'trips#search'
  resources :trips, only: [:show]
end
