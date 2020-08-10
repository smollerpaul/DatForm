Rails.application.routes.draw do

  get 'homepage/index'
  get 'sessions/new'
  resources :users

  resources :employees do
    resources :duties
  end

  resources :freelancers do
    resources :tasks
  end

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'sessions#new' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
