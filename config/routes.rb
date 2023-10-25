Rails.application.routes.draw do
  resources :create_flights
  resources :airports
 get "search", to: "search#index"

 get "about", to: "about#new"
 post "about", to: "booking#create"

 get "flights", to: "flight#new"

 get "bookings", to: "booking#index"

 get "flight", to: "flights#index"

 get "create_flights", to: "create_flights#index"

 get "search_for_flight", to: "search_for_flight#search"

 root to: "main#index"

end
