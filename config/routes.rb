Rails.application.routes.draw do
  #get 'dashboard/index'
  root 'dashboard#index'
  devise_for :users
  resources :aeronaves
  resources :soldados
  resources :patentes
  resources :armamentos
end
