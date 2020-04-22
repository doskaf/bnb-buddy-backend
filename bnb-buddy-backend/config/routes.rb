Rails.application.routes.draw do
  resources :bookings
  resources :listings do
    resources :bookings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end