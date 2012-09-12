CreativeBusinessCup::Application.routes.draw do
  #filter :locale
  resources :videos, :only => [:show]

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'home#index'
end
