Rails.application.routes.draw do
  resources :users
  get '/welcome', to: 'users#index', as: 'welcome'
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'

end

