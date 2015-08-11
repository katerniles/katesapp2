class PaymentsController < ApplicationController
  def create
    token = params[:stripeToken]
    product = Product.find(params[:product_id])
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => (product.price * 100).to_i, # amount in cents, again
        :currency => "usd",
        :source => token,
        :description => params[:stripeEmail]
      )
    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err  = body[:error]
      flash[:error] = "We're sorry. There was an error processing your payment: #{err[:message]}"
    end
    redirect_to products_path
  end
end