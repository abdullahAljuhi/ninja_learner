# frozen_string_literal: true

require_relative 'gateway_adapter'
require_relative 'paymob_gateway'

class PaymobGatewayAdapter < GatewayAdapter
  def pay(amount)
    PaymobGateway.new.pay(amount * 100)
  end
end
