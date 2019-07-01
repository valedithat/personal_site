Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :users, controllers: {
  #   # all: 'admin'
  #   # sessions: 'users/sessions',
  #   # passwords: 'users/passwords',
  #   # registrations: 'users/registrations',
  #   # confirmations: 'users/confirmations',
  #   # unlocks: 'users/unlocks'
  # }

  resources :articles
end
