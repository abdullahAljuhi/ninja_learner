require 'ostruct'
require_relative 'order_service'

class Main
  def self.run
    order = OpenStruct.new(
      items: [
        OpenStruct.new(name: 'Book', price: 20, quantity: 2),
        OpenStruct.new(name: 'Pen', price: 5, quantity: 5)
      ]
    )
    user = OpenStruct.new(email: 'john@example.com', phone: '1234567890')
    discount_type = :vip

    OrderService.checkout(order, user, discount_type)
  end
end

if __FILE__ == $0
  Main.run
end

# usage:
# ruby week1/solid/main.rb
