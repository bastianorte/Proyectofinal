Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :families do
    collection do
      get "loads"
    end
  end
  resources :events
  resources :foods
  get '/random_background.jpg', to: 'background#image'
  root 'families#index'
  devise_for :users, controllers: { registrations: 'users/registrations', :omniauth_callbacks=>"users/omniauth_callbacks" }

  resources :users do
    collection do
      post :nuevo
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
