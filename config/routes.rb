Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  root 'users#index'
  resources :users
  resources :indicators
end
