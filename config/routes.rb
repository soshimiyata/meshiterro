Rails.application.routes.draw do
  root 'homes#top'
  get "homes/about" => "homes#about", as: "about"
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
end