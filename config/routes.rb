Rails.application.routes.draw do
  root to: "companies#index"
  resources :companies
  resources :events
end
