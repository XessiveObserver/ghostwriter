Rails.application.routes.draw do
  devise_for :users 
  
  resources :accounts

  get 'ghost_home/index'
  
  root "ghost_home#index"
end
