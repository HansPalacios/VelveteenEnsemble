Rails.application.routes.draw do

  resources :emails
  devise_for :admins
  
  get 'admin', to: 'admin#index'

  get 'privacy', to: 'privacy#index'
  get 'review', to: 'review#index'
  get 'songs', to: 'songs#index'
  get 'venues', to: 'venues#index'
  # devise_for :admins, controllers: { sessions: 'users/sessions'
  # }
  # devise_for :admins, controllers: { registrations: 'users/registrations' }



  resources :musicians
  resources :abouts
  resources :venues
  resources :uploads
  resources :contacts, only: [:new, :create]
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

end
