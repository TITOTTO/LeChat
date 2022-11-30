class CartfullController < ApplicationController
  def create    
    Cartfull.create!(article_id: params[:article_id], cart_id: current_user.cart.id)   
    redirect_to "/profiles/#{current_user.id}/carts/#{current_user.cart.id}"    
  end
end
