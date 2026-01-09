require_relative '../shipping_calculator'

class AramexStrategy < ShippingCalculator
  def calculate(order)
    order.weight * 10 + 15
  end
end
