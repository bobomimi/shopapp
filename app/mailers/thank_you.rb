class ThankYou < ApplicationMailer
	  def thank_you(order)
        @order = order
        mail(to: @order.email, subject: 'Thank You')
      end


end
