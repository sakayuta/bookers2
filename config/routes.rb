Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :index, :edit]
  resources :books, only: [:show, :index]
 
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
