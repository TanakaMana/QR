Rails.application.routes.draw do
  resources :qrs, only: [:index, :show]
end
