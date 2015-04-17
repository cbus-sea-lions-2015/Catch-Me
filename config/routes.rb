Rails.application.routes.draw do
  # resources :activities_data
  # resources :routes_data
  # resources :routes
  # resources :activities
  # resources :users
  # resources :location_details
  # resources :sessions
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
 

   resource :apis, only: [:index] do
     post '/authenticate', to: 'apis#authenticate'
  end

 
  root 'location_details#index'
   
  get '/all_locations_for_map' => 'location_details#all_locations_for_map'
  get '/logout', to: 'sessions#destroy'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'


end
