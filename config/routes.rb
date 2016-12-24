Rails.application.routes.draw do
  devise_for :users
  resources :qrs, only: [:index, :show]
end
