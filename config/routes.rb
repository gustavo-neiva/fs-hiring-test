Rails.application.routes.draw do
  get 'rooms/index'

  get 'rooms/show'

  get 'bookings/index'

  get 'bookings/show'

  get 'motels/show'

  get 'motels/index'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
