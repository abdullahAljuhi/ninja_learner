# frozen_string_literal: true

require_relative 'gateway_adapter'
require_relative 'paypal_gateway'

class PaypalGatewayAdapter < GatewayAdapter
  def pay(amount)
    PaypalGateway.new.make_payment(amount)
  end
end
