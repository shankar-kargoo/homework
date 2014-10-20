Rails.application.routes.draw do
  
  root to: 'tasks#index'
  
  get   '/login',     to: 'sessions#new'
  post  '/login',     to: 'sessions#create'
  get   '/logout',    to: 'sessions#destroy'

  resources :tasks
  resources :todos
  resources :users
  resources :subjects, only: [:new, :create]

end
