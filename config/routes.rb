ForgeCraft::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  devise_scope :user do
    get "login", :to => "devise/sessions#new"
    get "register", :to => "devise/registrations#new"
    get "logout", :to => "devise/sessions#destroy"
  end

  resources :users, :only => [:index]
  
  resources :emails, :only => [:create]

  match 'armory/Sets' => "item_sets#index"
  resources :items, :only => [:show, :update]
  resources :armory, :controller => "classifications" do
    resources :items
  end
  resources :item_sets

  resources :topics

  namespace :admin do
    resources :users, :only => [:index]
  end

  root :to => "users#index"

end
