class UsersController < ApplicationController
  

  def index
    @users = User.all
  end

  def new

  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def update
  end

  def destroy
  end

  def show
    @user = User.find(params[:id])
    # @current_user = User.find(session[:user_id])
  end

  def edit
  end


  private

  def user_params
    
    params.require(:user).permit(:fname, :lname, :username, :email, :password)

  end
end
