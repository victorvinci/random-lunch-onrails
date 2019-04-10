Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, except: :index
end