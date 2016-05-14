Rails.application.routes.draw do
  root 'shoes#index'

  resources :shoes, only: :index
end
