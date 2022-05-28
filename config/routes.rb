Rails.application.routes.draw do
  root 'plans#index'

  resources :lists
  resources :restrictions
  resources :users
  resources :meals
  resources :plans
  resources :recipes
  resources :ingredients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
