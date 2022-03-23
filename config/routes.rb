Rails.application.routes.draw do
  resources :habits do
    member do
      resources :checked_days
      get :reset
    end
  end
  devise_for :users
  #get 'home/index'
  root 'home#index'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
