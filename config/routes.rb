Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users

  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :verses
  resources :users
  resources :fathers
  resources :father_commentaries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
