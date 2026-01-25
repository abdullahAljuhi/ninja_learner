require_relative 'price_decorator'

class GiftWrapDecorator < PriceDecorator
  WRAP_COST = 5

  def total
    super + WRAP_COST
  end
end
