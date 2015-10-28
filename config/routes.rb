Rails.application.routes.draw do
  devise_for :users

  resources :users, :only => [:index] do
    resources :workouts, :except => [:index, :show]
  end

  resources :users, :only => [:index] do
    resources :foods, :except => [:index, :show]
  end

  root :to => 'home#index'
end
