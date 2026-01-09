require 'ostruct'
require_relative 'calculator'

class Main
  def self.run
    order = OpenStruct.new(weight: 10)
    shipping_calculator = 'DHL'
    cost = Calculator.calculate(shipping_calculator: shipping_calculator, order: order)
    puts "Shipping cost using #{shipping_calculator}: #{cost}"
  end
end

if __FILE__ == $0
  Main.run
end

# usage:
# ruby week1/strategy/main.rb
