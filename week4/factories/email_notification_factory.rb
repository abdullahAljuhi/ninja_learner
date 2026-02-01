require_relative './notification_factory'
require_relative '../strategies/email_notifier'

class EmailNotificationFactory < NotificationFactory
  def create_notifier
    EmailNotifier.new
  end
end
