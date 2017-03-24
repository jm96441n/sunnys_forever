Rails.application.routes.draw do
  devise_for :users
  resources :admin_events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events, only: :index
  resources :moneys, only: :update
  resources :admin_moneys, only: [:edit, :update]
  root 'events#index'
end

