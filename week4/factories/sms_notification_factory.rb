require_relative './notification_factory'
require_relative './../strategies/sms_notifier'

class SmsNotificationFactory < NotificationFactory
  def create_notifier
    SmsNotifier.new
  end
end
