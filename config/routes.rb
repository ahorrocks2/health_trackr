Rails.application.routes.draw do

  resources :workouts, :except => [:show]
  resources :foods, :except => [:show]

  root :to => 'home#index'
end
