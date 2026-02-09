
require_relative 'notification_factory'
require_relative '../strategies/aws/email'
require_relative '../strategies/aws/sms'

module Factories
  class AwsNotificationFactory < NotificationFactory
    def create_email_notifier
      Strategies::Aws::Email.new
    end

    def create_sms_notifier
      Strategies::Aws::Sms.new
    end
  end
end
