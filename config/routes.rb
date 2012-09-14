CreativeBusinessCup::Application.routes.draw do
  resources :inscriptions, :only => [:create] do
    member do
      get :export
    end
  end

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'home#index'
end
