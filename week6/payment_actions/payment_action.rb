# frozen_string_literal: true

require_relative '../payment_gateway_client'

class PaymentAction
  SUBSCRIPTION = {
    amount: 50,
    currency: 'USD'
  }.freeze

  def initialize
    @client = PaymentGatewayClient.instance
  end

  def call(*args)
    raise NotImplementedError, 'Subclasses must implement the call method'
  end
end
