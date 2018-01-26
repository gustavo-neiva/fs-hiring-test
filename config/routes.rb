Rails.application.routes.draw do
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  devise_for :users, :skip => [:sessions]
    as :user do
      get 'sign-in' => 'devise/sessions#new', :as => :new_user_session
      post 'sign-in' => 'devise/sessions#create', :as => :user_session
      delete 'sign-out' => 'devise/sessions#destroy', :as => :destroy_user_session
    end
  resources :user do
    resources :motels, only: [:index, :show] do
      resources :rooms, only: [:index, :show]
      resources :bookings, only: [:index]
    end
  end
end