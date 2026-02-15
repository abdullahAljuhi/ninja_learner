# frozen_string_literal: true

require_relative 'payment_actions/charge_customer'
require_relative 'payment_actions/refund_customer'
require_relative 'payment_actions/subscription_renewal'

class Main
  ENV['PAYMENT_BASE_URL'] = 'https://payments.example.com'
  ENV['PAYMENT_API_KEY'] = 'test_api_key_123'

  def self.run
    charge_action = ChargeCustomer.new
    charge_action.call('customer_123', 100)

    refund_action = RefundCustomer.new
    refund_action.call('txn_456')

    renewal_action = SubscriptionRenewal.new
    renewal_action.call('customer_789')
  end
end

Main.run
