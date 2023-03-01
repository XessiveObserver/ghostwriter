Rails.application.routes.draw do
  devise_for :users
  get 'ghost_home/index'
  
  root "ghost_home#index"
end
