Rails.application.routes.draw do


  root 'welcome#home'
  get 'about', to: 'welcome#about'

  resources :articles

  get 'signup', to:'users#new'
  # post 'users', to 'users#create' or
  resources :users, except: [:new]

end
