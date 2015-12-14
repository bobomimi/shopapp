class Order < ActiveRecord::Base
	validates  :city, :state, :name,:country, :street_address,:zip_postal_code,:tel_mobile, :email ,presence: true

	belongs_to :listing
	belongs_to :buyer, class_name: "User"
    belongs_to :seller, class_name: "User"

    

attr_accessor :stripe_card_token

def save_with_payment
  if valid?
    customer = Stripe::Customer.create(description: state, plan: plan_id, card: stripe_card_token)
    self.stripe_customer_token = customer.id
    save!
  end
rescue Stripe::InvalidRequestError => e
  logger.error "Stripe error while creating customer: #{e.message}"
  errors.add :base, "There was a problem with your credit card."
  false
end



end
