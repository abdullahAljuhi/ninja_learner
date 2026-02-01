require_relative './notification_factory'
require_relative './../strategies/push_notifier'

class PushNotificationFactory < NotificationFactory
  def create_notifier
    PushNotifier.new
  end
end
