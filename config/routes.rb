Rails.application.routes.draw do
  root to: 'documents#index'

  resources :users, only: [:new, :create]
  resources :documents, only: [:index, :show, :new, :create]
  resource :session
end
