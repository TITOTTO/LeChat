class CartsController < ApplicationController
  before_action :rightcart, only: [:show]


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

  def rightcart
    if current_user.cart.id != params[:id]
      flash[:error] = "Qu'est-ce que t'essaie de faire ?"
      redirect_to root_path
    end
  end
end
