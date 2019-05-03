Rails.application.routes.draw do
  
  get '/inicio', to: 'pages#inicio'

  get '/home', to: 'pages#home'

  get '/login', to: 'pages#login'
  
  get '/signin', to: 'pages#signin'

  root 'pages#home'
  
  resources :pages

  post '/signin', to: 'pages#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
