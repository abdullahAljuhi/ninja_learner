require_relative '../shipping_calculator'

class FedexStrategy < ShippingCalculator
  def calculate(order)
    order.weight * 10 + 15
  end
end
