require_relative '../discount'

class VIPDiscount < Discount
  def apply(total)
    total * 0.2
  end
end
