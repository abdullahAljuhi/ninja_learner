require_relative 'notification_factory'
require_relative '../strategies/twilio/email'
require_relative '../strategies/twilio/sms'

module Factories
  class TwilioNotificationFactory < NotificationFactory
    def create_email_notifier
      Strategies::Twilio::Email.new
    end

    def create_sms_notifier
      Strategies::Twilio::Sms.new
    end
  end
end
