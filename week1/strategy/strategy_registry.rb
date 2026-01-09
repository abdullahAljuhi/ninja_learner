
require_relative 'strategies/aramex_strategy'
require_relative 'strategies/dhl_strategy'
require_relative 'strategies/fedex_strategy'

class StrategyRegistry
  STRATEGIES = {
    aramex: AramexStrategy,
    dhl: DhlStrategy,
    fedex: FedexStrategy
  }.freeze

  def self.get_strategy(name)
    strategy_class = STRATEGIES[name]
    raise 'Unknown strategy' unless strategy_class

    strategy_class.new
  end
end
