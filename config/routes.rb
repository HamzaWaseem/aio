Rails.application.routes.draw do
  # resources :car_sellings
  # resources :car_modifications
  # resources :car_maintenances
  # resources :car_washes
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'website#index'
  get 'about' => 'website#about'
  # get 'price' => 'website#price'
  get 'maintenance' => 'website#maintenance'
  get 'wash' => 'website#wash'
  get 'modification' => 'website#modification'
  get 'selling' => 'website#selling'
  get 'about_us' => 'website#about_us'
  # post '/saves' => 'website#create', :as => :save_message
  # get ':name' => 'website#game_show'


end
