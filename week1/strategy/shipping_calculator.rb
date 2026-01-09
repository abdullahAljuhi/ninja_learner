class ShippingCalculator
  def calculate(order)
    raise NotImplementedError, 'Subclasses must implement the calculate method'
  end
end
