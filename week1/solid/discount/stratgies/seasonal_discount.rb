require_relative '../discount'

class SeasonalDiscount < Discount
  def apply(total)
    total * 0.1
  end
end
