Rails.application.routes.draw do
  
  get '/new', to: 'sessions#new'

  get '/inicio', to: 'pages#inicio'

  get '/home', to: 'pages#home'

  
  get '/signin', to: 'pages#signin'

  root 'pages#home'

  
  resources :pages

  post '/signin', to: 'pages#create'

  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/add', to: 'posts#add'
  post '/add', to: 'posts#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
