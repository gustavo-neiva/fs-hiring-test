Rails.application.routes.draw do
  get 'rooms/index'

  get 'rooms/show'

  get 'bookings/index'

  get 'bookings/show'

  get 'motels/show'

  get 'motels/index'

  devise_for :users
  resources :motels, only: [:index, :show] do
    resources :rooms, only: [:index, :show]
    resources :bookings, only: [:index]
  end
end