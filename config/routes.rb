Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :documents, only: [:index, :new, :create]
  resource :session
end
