Rails.application.routes.draw do
  root to: 'articles#index'

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :articles
end
