
require_relative './registry/order_price_with_registry'
require_relative './decorators/gift_wrap_decorator'
require_relative './decorators/express_shipping_decorator'
require_relative './decorators/insurance_decorator'
require_relative './registry/decorator_registry'
require_relative 'base/base_price'
require_relative 'base/price_component'

class Main
  def self.run
    # Register decorators
    DecoratorRegistry.register(GiftWrapDecorator, ->(opts) { opts[:gift_wrap] })
    DecoratorRegistry.register(ExpressShippingDecorator, ->(opts) { opts[:express_shipping] })
    DecoratorRegistry.register(InsuranceDecorator, ->(opts) { opts[:insurance] })

    total = OrderPriceWithRegistry.calculate(100,
                                             gift_wrap: true,
                                             express_shipping: true,
                                             insurance: true)
    puts "Total order price: $#{total}"
  end
end

Main.run
