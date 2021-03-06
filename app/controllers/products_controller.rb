class ProductsController < ApplicationController
  def index
    @products = Product.all

    if params[:search]
      @products = search(params[:search])
    else
      @products= Product.all
    end
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
    @user = current_user
    @product = Product.find(params[:product_id])
    @user.cart.products.push(@product)
    redirect_to @user

  end


  def add_to_wishlist
    @user = current_user
    @product = Product.find(params[:product_id])
    @user.wishlist.products.push(@product)
    redirect_to @user

  end


  def remove_from_cart
    @user = current_user
    @product = Product.find(params[:product_id])
    @user.cart.products.delete(@product)
    redirect_to @user
  end


  def remove_from_wishlist
    @user = current_user
    @product = Product.find(params[:product_id])
    @user.wishlist.products.delete(@product)
    redirect_to @user

  end

  def add_to_cart_from_wishlist
    @user = current_user
    @product = Product.find(params[:product_id])
    @user.cart.products.push(@product)
    @user.wishlist.products.delete(@product)
    redirect_to @user

  end

  def checkout 
    @user = current_user
    @product = Product.all
    @user.cart.products.delete(@product)
    redirect_to @user

  end

  def clear_wishlist
    @user = current_user
    @product = Product.all
    @user.wishlist.products.delete(@product)
    redirect_to @user
  end


  def search term

    Product.where("product_name LIKE (?) OR department LIKE(?)", "%#{term}%", "%#{term}%")


  end
end
