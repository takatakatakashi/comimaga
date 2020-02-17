Rails.application.routes.draw do
  root to: 'mangas#index'
  devise_for :users
  resources :mangas
  resources :likes
  resources :tags
  resources :evaluates
  resources :stories
  resources :images
  resources :reads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
