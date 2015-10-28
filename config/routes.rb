Rails.application.routes.draw do
  devise_for :users
  
  root :to => 'home#index'

  resources :foods, :except => [:index, :show]
  resources :workouts, :except => [:index, :show]
end
