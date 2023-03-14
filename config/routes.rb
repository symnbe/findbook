Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:index, :show, :edit, :update, :destroy]
  resources :users, only: [:indedx, :show, :edit, :update,]
end
