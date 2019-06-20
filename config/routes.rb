Rails.application.routes.draw do
  get 'articles/new'
  get 'articles/create'
  get 'articles/show'
  get 'articles/index'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/destroy'
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'dashboard#show'
  resources :dashboard, only: [:show]
  resources :articles
end
