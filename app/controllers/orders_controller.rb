class OrdersController < ApplicationController
  def new
  end

  def create

    @cart = current_user.cart
    @amount = (@cart.total * 100).to_i
  
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
    
    @order = Order.create(stripe_customer_id: customer.id, user_id: current_user.id)

    @order_articles = @cart_articles.each do |article|
      JoinTableOrderArticle.create(article_id: article.id, order_id: @order.id)
    end
    
    @cart_articles.destroy_all
    
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
