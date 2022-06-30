Rails.application.routes.draw do
  root to: "home#top"
  get 'home/about' => 'home#about', as: 'about'
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  resources :users, only: [:show, :index, :edit, :update]
  resources :books, only: [:show, :index, :create, :edit, :update, :destroy]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
