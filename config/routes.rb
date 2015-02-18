Rails.application.routes.draw do

  resource :dashboard, only: [:index]
  root "dashboards#index"

end
