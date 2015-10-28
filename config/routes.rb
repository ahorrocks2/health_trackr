Rails.application.routes.draw do
  root :to => 'home#index'

  resources :foods, :except => [:index, :show]
  resources :workouts, :except => [:index, :show]
end
