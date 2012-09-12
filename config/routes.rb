CreativeBusinessCup::Application.routes.draw do
  #filter :locale
  resources :videos, :only => [:show]
  resources :inscriptions, :only => [:create] do
    member do
      get :export
    end
  end

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'home#index'
end
