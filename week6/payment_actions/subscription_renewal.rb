# frozen_string_literal: true

require_relative 'payment_action'

class SubscriptionRenewal < PaymentAction
  def call(customer_id)
    @client.charge(amount: SUBSCRIPTION[:amount], currency: SUBSCRIPTION[:currency], customer_id: customer_id)
  end
end
