Rails.application.routes.draw do

  devise_for :users
  resource :dashboard, only: [:index]
  root "dashboards#index"

  resources :users, only: [:update]

end
