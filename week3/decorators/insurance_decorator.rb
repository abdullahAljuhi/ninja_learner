require_relative 'price_decorator'

class InsuranceDecorator < PriceDecorator
  INSURANCE_COST = 10

  def total
    super + INSURANCE_COST
  end
end
