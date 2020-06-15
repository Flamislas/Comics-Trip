Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "static_pages#home"

devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
resources :users, only: [:show]

resources :index

resources :books

resources :book_cards do
  resources :book_pictures, only: [:create]
end

resources :landing_pages, only: [:index]

resources :google_books, only: [:index]

resources :landing_pages, only: [:index]
end
