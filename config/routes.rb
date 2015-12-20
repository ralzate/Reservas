Rails.application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "usuarios#new", :as => "signup"
  get "secret" => "home#secret", :as => "secret"
  
  resources :usuarios
  resources :sessions

  root :to => "home#index"
end