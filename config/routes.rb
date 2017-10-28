Rails.application.routes.draw do
  get 'sessions/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'sessions/new'

  get 'sessions/create'

  root to: 'tasks#index'
  
  get 'signup', to: 'users#new'
  
  get 'login', to:  'sessions#new'
  post 'login', to:  'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  
  resources :tasks
  resources :users, only: [:new, :create]
  
end
