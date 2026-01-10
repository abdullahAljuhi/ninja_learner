require_relative 'discount'
require_relative 'stratgies/vip_discount'
require_relative 'stratgies/seasonal_discount'
require_relative 'stratgies/no_discount'

class DiscountApplier
  def self.apply_discount(discount_type, total)
    discount_strategy = case discount_type
                        when :vip
                          VIPDiscount.new
                        when :seasonal
                          SeasonalDiscount.new
                        else
                          NoDiscount.new
                        end
    discount_strategy.apply(total)
  end
end
