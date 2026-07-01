Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to :"users#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
