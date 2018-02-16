Rails.application.routes.draw do
  get 'sessions/new'

  resources :events
  resources :users
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
