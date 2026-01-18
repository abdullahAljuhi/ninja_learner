# main.rb
require_relative 'notification_observer'
require_relative 'order'
require_relative 'order_subscribers'

class Main
  def self.run
    order = Order.new('user@example.com', '123-456-7890')
    order.confirm!
  end
end

Main.run
