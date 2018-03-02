Rails.application.routes.draw do
  resources :teams
  resources :users
  resources :events
  get 'sessions/new'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root :to => redirect('/login')
end
