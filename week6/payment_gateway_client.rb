require 'singleton'

class PaymentGatewayClient
  include Singleton

  def configure(base_url:, api_key:)
    @base_url = base_url
    @api_key = api_key

    raise 'Missing API key' if @api_key.nil?

    @headers = {
      'Authorization' => "Bearer #{@api_key}",
      'Content-Type' => 'application/json'
    }

    puts 'PaymentGatewayClient configured...'
  end

  def charge(amount:, currency:, customer_id:)
    puts "POST #{@base_url}/charge"
    puts "Charging #{amount} #{currency} for customer #{customer_id}"
  end

  def refund(transaction_id:)
    puts "POST #{@base_url}/refund"
    puts "Refunding transaction #{transaction_id}"
  end
end
