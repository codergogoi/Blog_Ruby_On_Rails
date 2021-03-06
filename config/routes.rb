Rails.application.routes.draw do


  root 'welcome#home'
  get 'about', to: 'welcome#about'

  resources :articles

  get 'signup', to:'users#new'
  # post 'users', to 'users#create' or
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]
end
