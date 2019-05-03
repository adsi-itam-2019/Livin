class PagesController < ApplicationController
  
  def inicio
    #@user = User.find(params[:id]) 
    @posts = Post.all
  end

  def home
  end

  def login
  end
  
  def signin

    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
 
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:success] = "Bienvenido a Livin"
      redirect_to inicio_url
    else
      flash[:danger] = 'Correo o usuario ya ocupados'
      redirect_to signin_url
    end
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  
end

