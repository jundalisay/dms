Rails.application.routes.draw do

  resources :educations
  resources :employments
  # get 'users/index'

  # get 'users/show'

  root 'users#index'
  
  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions"}
  resources :users 

end