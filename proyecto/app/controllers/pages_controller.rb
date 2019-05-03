class PagesController < ApplicationController
  def inicio
    @user = User.find(params[:id])
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
      flash[:success] = "Bienvenido a Livin"
      redirect_to inicio_url
    else
      render 'new'
    end
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  
end
