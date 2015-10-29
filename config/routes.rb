Rails.application.routes.draw do

  resources :workouts, :except => [:index, :show]
  resources :foods, :except => [:index, :show]
  
  root :to => 'home#index'
end
