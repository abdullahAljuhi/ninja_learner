class CheckoutFacade
  def initialize(order)
    @order = order
  end

  def process_checkout
    process_payment
    reserve_inventory
    schedule_shipping
    send_notification
  end

  private

  def process_payment
    payment = PaymentGateway.new
    payment.charge(@order.total_price)
  end

  def reserve_inventory
    inventory = InventoryService.new
    @order.items.each do |item|
      inventory.reserve(item.product_id, item.quantity)
    end
  end

  def schedule_shipping
    shipping = ShippingService.new
    shipping.schedule(@order.id)
  end

  def send_notification
    NotificationService.new.send_email(
      @order.user_email,
      "Your order has been placed"
    )
  end
end
