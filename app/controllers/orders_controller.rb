class OrdersController < ApplicationController
  def new
  end

  def create

    @cart = current_user.cart
    @amount = 500
  
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })
    
    @order = Order.create(cart_id: current_user.id)


    current_user.cart.cartfulls.each do |x|
      if x.cart.id == current_user.cart.id
        x.destroy
      end
    end

    redirect_to new_order_path
    
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_order_path
  end
end
