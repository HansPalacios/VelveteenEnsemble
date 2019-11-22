Rails.application.routes.draw do

  
  
  resources :concerts
  devise_for :admins

  get 'BookingVE', to: 'home#BookingVE', as: 'BookingVE'

  
  get 'admin', to: 'admin#index'
  get 'home', to: 'home#index'
  get 'privacy', to: 'privacy#index'
  get 'reviews', to: 'review#index'
  get 'songs', to: 'songs#index'
  get 'venues', to: 'venues#index'
  get 'emails', to: 'home#index'
  get 'media', to: 'uploads#index'
  # get 'about', to: 'abouts#index'
  get 'contact', to: 'contacts#new'

#calendar
# get '/redirect', to: 'example#redirect', as: 'redirect'
# get '/callback', to: 'example#callback', as: 'callback'
  get 'event/:date/:location/:type/:length/:contact_id/:fname/:lname/:email/:phone/:message', to: 'events#new', as: 'new_event_path'

  # get 'new/:amount/:eventdate/:eventlocation/:deposit/:description/:fname/:lname', to: 'charges#new', as: 'new_charge_path'
  namespace :stripe do
    resources :charges, only: :create
  end  
  
  resources :musicians

  resources :events
  resources :customers
  resources :emails

  resources :abouts
  resources :venues
  # resources :uploads
  resources :contacts
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

end
