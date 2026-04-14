# frozen_string_literal: true

require_relative 'stripe_gateway_adapter'
require_relative 'paypal_gateway_adapter'
require_relative 'paymob_gateway_adapter'

class CheckoutService
  PROVIDER_REGISTRY = {
    stripe: StripeGatewayAdapter,
    paypal: PaypalGatewayAdapter,
    paymob: PaymobGatewayAdapter
  }.freeze

  def initialize(provider:)
    @provider = provider
  end

  def pay(amount)
    adapter_class = PROVIDER_REGISTRY[@provider]
    raise 'Unsupported provider' unless adapter_class

    adapter = adapter_class.new
    adapter.pay(amount)
  end
end
