# frozen_string_literal: true

require_relative '../payment_gateway_client'

class PaymentAction
  SUBSCRIPTION = {
    amount: 50,
    currency: 'USD'
  }.freeze

  def initialize
    base_url = ENV['PAYMENT_BASE_URL'] || 'https://payments.example.com'
    api_key = ENV['PAYMENT_API_KEY']
    @client = PaymentGatewayClient.instance
    @client.configure(base_url: base_url, api_key: api_key)
  end

  def call(*args)
    raise NotImplementedError, 'Subclasses must implement the call method'
  end
end
