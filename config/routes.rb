Rails.application.routes.draw do
  namespace :api do
    defaults format: :json do
      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
      delete :logout, to: "sessions#logout"
      get :logged_in, to: "sessions#logged_in"
      resources :tweets
      root to: "application#home"
    end
  end
end
