# frozen_string_literal: true

require_relative 'gateway_adapter'
require_relative 'stripe_gateway'

class StripeGatewayAdapter < GatewayAdapter
  def pay(amount)
    StripeGateway.new.charge(amount: amount)
  end
end
