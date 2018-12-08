Rails.application.routes.draw do

  
  
  devise_for :admins
  
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
  get 'event/:date/:location/:type/:length', to: 'events#new', as: 'new_event_path'
  resources :events
  resources :customers
  resources :emails
  resources :charges
  resources :musicians
  resources :abouts
  resources :venues
  # resources :uploads
  resources :contacts
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

end
