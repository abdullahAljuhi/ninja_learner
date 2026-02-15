# frozen_string_literal: true
require_relative 'payment_action'

class ChargeCustomer < PaymentAction
  def call(customer_id, amount)
    @client.charge(amount: amount, currency: SUBSCRIPTION[:currency], customer_id: customer_id)
  end
end
