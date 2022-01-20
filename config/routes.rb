Rails.application.routes.draw do
  root to: "flats#index"
  resources :flats
  delete "flats", to: "flats#destroy_all", as: :destroy_all
  get "flat", to: "flats#seed", as: :seed
end
