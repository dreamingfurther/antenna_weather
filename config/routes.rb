Rails.application.routes.draw do
  root "dashboard#index"
  get "admin", to: "admin/dashboard#show"

  namespace :admin do
    resource :dashboard, only: [:show]
  end

  resource :locations, only: [:create]
end
