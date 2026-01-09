class OrderPrinter
  def self.print(order, total, total_with_discount)
    puts "Order Summary:"
    puts "Total after discount: #{total_with_discount}"
    puts 'Order details:'
    order.items.each do |item|
      puts "- #{item.quantity} x #{item.name} @ #{item.price} each"
    end
    puts "Total before discount: #{total}"
  end
end
