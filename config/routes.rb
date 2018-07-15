Rails.application.routes.draw do
  resources :images
  resources :media
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/media' => 'media#index'
 	resources :uploads
end
