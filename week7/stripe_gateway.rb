# frozen_string_literal: true

class StripeGateway
  def charge(amount:)
    puts "Stripe charged #{amount} USD"
  end
end
