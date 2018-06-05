Rails.application.routes.draw do
  devise_for :users

  resources :r_apps
  root 'welcome#index'
end
