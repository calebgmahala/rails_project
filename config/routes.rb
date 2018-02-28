Rails.application.routes.draw do
  resources :events
  get 'sessions/new'

  resources :users
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root :to => redirect('/login')
end
