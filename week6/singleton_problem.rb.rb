# frozen_string_literal: true

# class PaymentGatewayClient
#   def initialize
# @base_url = ENV["PAYMENT_BASE_URL"] || "https://payments.example.com"
# @api_key  = ENV["PAYMENT_API_KEY"]

# raise "Missing PAYMENT_API_KEY" if @api_key.nil?

# @headers = {
#   "Authorization" => "Bearer #{@api_key}",
#   "Content-Type" => "application/json"
# }

# puts "PaymentGatewayClient initialized..."
#   end

# def charge(amount:, currency:, customer_id:)
#   puts "POST #{@base_url}/charge"
#   puts "Charging #{amount} #{currency} for customer #{customer_id}"
# end

# def refund(transaction_id:)
#   puts "POST #{@base_url}/refund"
#   puts "Refunding transaction #{transaction_id}"
# end
# end

# class ChargeCustomer
#   def call(customer_id, amount)
#     client = PaymentGatewayClient.new
#     client.charge(amount: amount, currency: "USD", customer_id: customer_id)
#   end
# end

# class RefundCustomer
#   def call(transaction_id)
#     client = PaymentGatewayClient.new
#     client.refund(transaction_id: transaction_id)
#   end
# end

# class SubscriptionRenewal
#   def call(customer_id)
#     client = PaymentGatewayClient.new
#     client.charge(amount: 50, currency: "USD", customer_id: customer_id)
#   end
# end
