class CartsController < ApplicationController
before_action :rightcart, only: [:show]


  def show        
    @user = User.find(params[:profile_id])
    @cart = @user.cart
    @total = 0
    @cart.articles.each do |article|
      @total += article.price
    end
  end

  def create
  end

  def uptdate
  end

  def destroy
  end


 def rightcart 
  
  if current_user.cart.id.to_i != params[:id].to_i
      
    flash[:error] = "Qu'est-ce que t'essaie de faire ?"
    redirect_to root_path
   end
end

end
