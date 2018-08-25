Rails.application.routes.draw do

  get 'privacy', to: 'privacy#index'
  get 'review', to: 'review#index'

  resources :musicians
  resources :abouts
  resources :venues
  resources :uploads
  resources :contacts
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

end
