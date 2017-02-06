class UsersController < ApplicationController

  skip_before_filter :verify_authenticity_token

  
  # this goes in the model ^^
  

  def index
    @users = User.all
  end

  def new
    @user = User.new

  end

  def create

    # @user = User.new(user_params)
    # if @user.save
    #   session[:user_id] = @user.id
    #   redirect_to @user
    # else
    #   flash[:notice] = "Error!, You need an email!"
    #   redirect_to new_user_path
    #  end
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        Wishlist.create(user_id: @user.id)
        Cart.create(user_id: @user.id)
        redirect_to @user
      else 
        flash[:notice] = "Error creating user!"
        render new_user_path
      end
  end

  def update
  end

  def destroy
  end

  def show
    @user = User.find(params[:id])
    @user.cart = @user.cart || Cart.create
    @user.wishlist = @user.wishlist || Wishlist.create
    # @current_user = User.find(session[:user_id])
  end

  def edit
  end


  private

  def user_params
    
    params.require(:user).permit(:fname, :lname, :username, :email, :password, :password_confirmation)

  end

  def create_users_cart
    Cart.create(user_id: @user.id)
  end
end
