require_relative '../base/base_price'
require_relative '../registry/decorator_registry'
require_relative '../decorators/gift_wrap_decorator'
require_relative '../decorators/express_shipping_decorator'
require_relative '../decorators/insurance_decorator'

class OrderPriceWithRegistry
  def self.calculate(base_price, options = {})
    price = BasePrice.new(base_price)
    decorators = DecoratorRegistry.decorators_for(options)

    decorators.each do |decorator|
      price = decorator.new(price)
    end

    price.total
  end
end
