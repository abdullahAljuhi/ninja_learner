require_relative 'payment_action'

class RefundCustomer < PaymentAction
  def call(transaction_id)
    @client.refund(transaction_id: transaction_id)
  end
end
