require_relative 'price_component'

class BasePrice < PriceComponent
  def initialize(amount)
    @amount = amount
  end

  def total
    @amount
  end
end
