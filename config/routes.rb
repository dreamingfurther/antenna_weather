Rails.application.routes.draw do
  root "dashboard#index"
  get "admin", to: "admin/dashboard#show"

  resource :locations, only: [:create]
end
