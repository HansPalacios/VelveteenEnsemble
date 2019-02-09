class ChargesController < ApplicationController
	class Stripe::ChargesController < ApplicationController
	  skip_before_action :verify_authenticity_token, only: :create

	  def create
	    event = Stripe::Event.retrieve(params[:id])
	    # do something with charge success event
	    render nothing: true, status: 201
	  rescue Stripe::APIConnectionError, Stripe::StripeError
	    render nothing: true, status: 400
	  end
	end
	# def new
	# 	unless admin_signed_in? 
 #      flash[:notice] = "You don't have access to that page!"
 #      redirect_to root_path
 #      return
 #    end
	# end

	# def create
	# 	unless admin_signed_in? 
 #      flash[:notice] = "You don't have access to that page!"
 #      redirect_to root_path
 #      return
 #    end
	#   # Amount in cents
	#   @amount = 25000
	#   @displayamount = @amount / 100

	#   customer = Stripe::Customer.create(
	#     :email => params[:stripeEmail],
	#     :source  => params[:stripeToken]
	#   )

	#   charge = Stripe::Charge.create(
	#     :customer    => customer.id,
	#     :amount      => @amount,
	#     :description => 'Rails Stripe customer',
	#     :currency    => 'usd'
	#   )

	# rescue Stripe::CardError => e
	#   flash[:error] = e.message
	#   redirect_to new_charge_path
	# end
end
