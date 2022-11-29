class CartsController < ApplicationController
  def show
    puts params
    @user = User.find(params[:profile_id])
    @cart = @user.cart
  end

  def create
  end

  def uptdate
  end

  def destroy
  end
end
