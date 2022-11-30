class CartfullController < ApplicationController
<<<<<<< HEAD
  
  def create
    
  end

=======
  def create    
    Cartfull.create!(article_id: params[:article_id], cart_id: current_user.cart.id)   
    redirect_to "/profiles/#{current_user.id}/carts/#{current_user.cart.id}"    
  end
>>>>>>> 56d040c2d94458e3db3c7f7d67d2e28035c6a89d
end
