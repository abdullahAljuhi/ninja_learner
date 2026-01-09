require_relative '../shipping_calculator'

class DhlStrategy < ShippingCalculator
  def calculate(order)
    order.weight * 12 + 20
  end
end
