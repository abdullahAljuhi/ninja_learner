class OrderTotalCalculator
  def self.calculate(order)
    order.items.sum { |item| item.price * item.quantity }
  end
end
