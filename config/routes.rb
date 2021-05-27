Rails.application.routes.draw do
  resources :movies
  resources :lists, only: [:index, :show, :new, :create]
  resources :bookmarks, only: [:new, :create, :destroy]
end
