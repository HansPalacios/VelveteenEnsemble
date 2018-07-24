Rails.application.routes.draw do
  resources :abouts
  resources :samples
  resources :venues
  resources :uploads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

end
