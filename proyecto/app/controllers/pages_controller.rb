class PagesController < ApplicationController
  def inicio
<<<<<<< HEAD
    @user = User.find(params[:id])
=======
>>>>>>> 45722cd7f01a3f7d89006a7c3318cb308f3998b5
  end

  def home
  end

  def login
  end
  
  def signin
<<<<<<< HEAD
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
  
=======
  end
>>>>>>> 45722cd7f01a3f7d89006a7c3318cb308f3998b5
end
