Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  root to: "homes#top"
  devise_for :users
  get 'homes/about', as: 'about'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
end