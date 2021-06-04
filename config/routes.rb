Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get 'bookings', to: 'bookings#index'
  resources :bikes, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:update]
end

#if statement with bookings for renter bookings for bikes
# bookings.user
# bookings.bike