require_relative 'strategy_registry'

class Calculator
  def self.calculate(shipping_calculator:, order:)
    strategy = get_strategy(shipping_calculator)
    strategy.calculate(order)
  end

  def self.get_strategy(shipping_calculator_name)
    name = shipping_calculator_name.downcase.to_sym
    StrategyRegistry.get_strategy(name)
  end
end
