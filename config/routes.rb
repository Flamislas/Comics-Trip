Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "static_pages#home"
  resources :follow_relationships
  devise_for :users
  resources :users, only: [:show] do
    resources :money_pots, only: [:show, :edit]
    resources :private_messages
  end

  resources :index

  resources :book_cards do
    resources :book_pictures, only: [:create]
    resources :tags, only: [:create]
    resources :comments
  end
  resources :books

  resources :landing_pages, only: [:index]

  resources :google_books, only: [:index]

  resources :charges

  resources :gdpr, only: [:index]
end
