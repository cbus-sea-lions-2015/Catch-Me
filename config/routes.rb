Rails.application.routes.draw do
  # resources :activities_data
  # resources :routes_data
  # resources :routes
  # resources :activities
  resources :users
  resources :location_details
  resources :sessions

   resource :apis, only: [:index] do
     post '/authenticate', to: 'apis#authenticate'
     resources :courses, only: [:show]
  end

 
  root 'location_details#index'
   
  get '/all_locations_for_map' => 'location_details#all_locations_for_map'
  get '/logout', to: 'sessions#destroy'


end
