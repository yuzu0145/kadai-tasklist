Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
    root to: 'tasks#index'
    
    resources :tasks
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'

    
    get 'signup', to: 'users#new'
    resources :users, only: [:index, :show, :new, :create]
    resources :tasks, only: [:create, :destroy]
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
