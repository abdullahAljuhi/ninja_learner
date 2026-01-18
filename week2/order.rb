class Order
  attr_reader :status, :user_email, :user_phone

  def initialize(user_email, user_phone)
    @user_email = user_email
    @user_phone = user_phone
    @status = "pending"
  end

  def confirm!
    @status = "confirmed"
    NotificationObserver.publish(:order_confirmed, self)
  end
end
