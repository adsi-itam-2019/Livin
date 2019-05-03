class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    user2 = User.find_by(password: params[:session][:password])
    if user == user2
      log_in(user)
      redirect_to inicio_url
    else
      flash.now[:danger] = 'Contraseña o usuario inválidos'
    
     
    end
  end
  
  def destroy
    log_out
    redirect_to root_path
  end 


end
