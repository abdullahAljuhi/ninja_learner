require_relative '../base/price_component'

# Concrete base component
class BasePrice < PriceComponent
  def initialize(amount)
    @amount = amount
  end

  def total
    @amount
  end
end
