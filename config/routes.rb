Rails.application.routes.draw do
  root "dashboards#index"
  get "admin", to: "admin/dashboards#show"

  namespace :admin do
    resource :dashboard, only: [:show]
  end

  resource :locations, only: [:create]
end
