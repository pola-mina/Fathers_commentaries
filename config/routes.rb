Rails.application.routes.draw do
  resources :verses
  resources :users
  resources :fathers
  resources :father_commentaries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end