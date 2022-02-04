Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registration, only: [:create]
  root to: "application#home"
end
