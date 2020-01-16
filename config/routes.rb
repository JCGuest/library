Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/create'
  get 'books/new'
  get 'index/new'
  get 'index/show'
  get 'index/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  resources :authors
end
