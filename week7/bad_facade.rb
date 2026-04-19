# class CheckoutController
#   def create
#     order = Order.find(params[:id])

#     # Payment
#     payment = PaymentGateway.new
#     payment.charge(order.total_price)

#     # Inventory
#     inventory = InventoryService.new
#     order.items.each do |item|
#       inventory.reserve(item.product_id, item.quantity)
#     end

#     # Shipping
#     shipping = ShippingService.new
#     shipping.schedule(order.id)

#     # Notification
#     NotificationService.new.send_email(
#       order.user_email,
#       "Your order has been placed"
#     )

#     render json: { success: true }
#   end
# end


# class PaymentGateway
#   def charge(amount)
#     puts "Charged #{amount}"
#   end
# end

# class InventoryService
#   def reserve(product_id, quantity)
#     puts "Reserved #{quantity} of product #{product_id}"
#   end
# end

# class ShippingService
#   def schedule(order_id)
#     puts "Shipping scheduled for order #{order_id}"
#   end
# end

# class NotificationService
#   def send_email(email, message)
#     puts "Email sent to #{email}: #{message}"
#   end

