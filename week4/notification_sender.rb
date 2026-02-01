require_relative './factories/email_notification_factory'
require_relative './factories/sms_notification_factory'
require_relative './factories/push_notification_factory'

class NotificationSender
  # Hash Constant variable map for factories
  NOTIFIER_FACTORIES = {
    email: -> { EmailNotificationFactory.new },
    sms: -> { SmsNotificationFactory.new },
    push: -> { PushNotificationFactory.new }
  }.freeze

  def initialize(type = nil)
    @type = type
  end

  def send(message)
    raise "Unknown notification type: #{@type}" unless NOTIFIER_FACTORIES.key?(@type)

    NOTIFIER_FACTORIES[@type].call.send(message)
  end
end
