Rails.application.routes.draw do
  
  get '/inicio', to: 'pages#inicio'

  get '/home', to: 'pages#home'

  get '/login', to: 'pages#login'
  
  get '/signin', to: 'pages#signin'

  root 'pages#home'
<<<<<<< HEAD
  
  resources :pages

  post '/signin', to: 'pages#create'
=======

>>>>>>> 45722cd7f01a3f7d89006a7c3318cb308f3998b5
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
