Rails.application.routes.draw do
  resources :profiles
  resources :books
  resources :charges, only: [:create, :new]
  devise_for :users

  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
