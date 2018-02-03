Rails.application.routes.draw do


  resources :accounts do
    resources :transfers
  end
  resources :pages, only: [:show]
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  authenticated :user do
    root 'accounts#index', as: "authenticated_root"
  end
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
