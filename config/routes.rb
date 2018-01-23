Rails.application.routes.draw do
  devise_for :users
  resources :motels, only: [:index, :show] do
    resources :rooms, only: [:index, :show]
    resources :bookings, only: [:index]
  end
end