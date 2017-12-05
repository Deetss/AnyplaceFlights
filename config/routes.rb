Rails.application.routes.draw do
  root 'flight#index'
  resources :flights
end
