Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'

  resources :books, only: [:create, :index, :show, :destroy, :edit, :update] do
    resources :book_comments, only: [:create, :destroy, :show]
    resource :favorites, only: [:create, :destroy]
  end

  resources :users, only: [:show, :index, :edit, :update]
  get "home/about", to: "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
