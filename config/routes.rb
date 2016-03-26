Rails.application.routes.draw do
  root "dashboard#index"

  resource :locations, only: [:create]
end
