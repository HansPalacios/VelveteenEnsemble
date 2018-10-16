Rails.application.routes.draw do

  
  devise_for :admins
  
  get 'admin', to: 'admin#index'
  get 'home', to: 'home#index'
  get 'privacy', to: 'privacy#index'
  get 'review', to: 'review#index'
  get 'songs', to: 'songs#index'
  get 'venues', to: 'venues#index'
  get 'emails', to: 'home#index'
 
  resources :emails
  resources :charges
  resources :musicians
  resources :abouts
  resources :venues
  resources :uploads
  resources :contacts, only: [:new, :create]
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'emails#new'

end
