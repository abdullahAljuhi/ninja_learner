require_relative '../discount'

class NoDiscount < Discount
  def apply(_total)
    0
  end
end
