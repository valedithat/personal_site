Rails.application.routes.draw do
  root to: 'articles#index'

  ActiveAdmin.routes(self)

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks',
  }, skip: :registration

  resources :articles, only: [:show, :index]

  resources :categories, only: [:show]
end
