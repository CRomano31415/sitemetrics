Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/about'

  resources :r_apps
  root 'welcome#index'
end
