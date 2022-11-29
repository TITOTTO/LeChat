class CartsController < ApplicationController
before_action :rightcart, only: [:show]


  def show        
    @user = User.find(params[:profile_id])
    @cart = @user.cart
  end

  def create
  end

  def uptdate
  end

  def destroy
  end

<<<<<<< HEAD
  def rightcart
    if current_user.cart.id != params[:id]
      flash[:error] = "C'est pas ton panier !"
      redirect_to root_path
    end
  end
=======

 def rightcart 
  
  if current_user.cart.id.to_i != params[:id].to_i
      
    flash[:error] = "Qu'est-ce que t'essaie de faire ?"
    redirect_to root_path
   end
end
  
>>>>>>> c49db2774ccde6824bc5838a3d1418393ff98f78
end
