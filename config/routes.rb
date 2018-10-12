Rails.application.routes.draw do
  resources :families
  resources :events
  resources :foods
  get '/random_background.jpg', to: 'background#image'
  root 'families#index'
  devise_for :users, controllers: { registrations: 'users/registrations', :omniauth_callbacks=>"users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
