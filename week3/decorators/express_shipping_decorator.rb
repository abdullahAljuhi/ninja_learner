require_relative 'price_decorator'

class ExpressShippingDecorator < PriceDecorator
  SHIPPING_COST = 15

  def total
    super + SHIPPING_COST
  end
end
