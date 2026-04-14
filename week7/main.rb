# frozen_string_literal: true

require_relative 'checkout_service'

class Main
  def self.run
    stripe = CheckoutService.new(provider: :stripe)
    stripe.pay(100)
  end
end

Main.run
