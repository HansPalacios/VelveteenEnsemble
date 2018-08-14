Rails.application.routes.draw do
  get 'songs/index'
  get 'songs/show'

  get 'songs/upload'

  get 'songs/delete'

  get 'privacy', to: 'privacy#index'

  resources :musicians
  resources :abouts
  resources :venues
  resources :uploads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

end
