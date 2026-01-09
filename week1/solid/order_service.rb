require_relative 'order_total_calculator'
require_relative 'discount/discount_applier'
require_relative 'notifications/notification_sender'
require_relative 'order_printer'

class OrderService
  def self.checkout(order, user, discount_type)
    total = OrderTotalCalculator.calculate(order)
    total_with_discount = DiscountApplier.apply_discount(discount_type, total)
    NotificationSender.send_notifications(user)
    OrderPrinter.print(order, total, total_with_discount)
  end
end

