require_relative '../base/price_component'

# Abstract decorator
class PriceDecorator < PriceComponent
  attr_reader :component

  def initialize(component)
    @component = component
  end

  def total
    @component.total
  end
end
