class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show

  end

  def destroy
  end

  def add_to_cart
    @user = User.find(session[:user_id])
    @product = Product.find(params[:product_id])
    @user.cart.products.push(@product)
    redirect_to @user

  end


  def add_to_wishlist
    @user = User.find(session[:user_id])
    @product = Product.find(params[:product_id])
    @user.wishlist.products.push(@product)
    redirect_to @user

  end
end
