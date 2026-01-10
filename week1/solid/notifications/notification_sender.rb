require_relative 'strategies/email_notification'
require_relative 'strategies/sms_notification'

class NotificationSender
  STRATEGIES = []

  def self.send_notifications(user)
    strategies = []
    strategies << EmailNotification.new if user.respond_to?(:email) && user.email
    strategies << SmsNotification.new if user.respond_to?(:phone) && user.phone
    strategies.each { |strategy| strategy.send(user) }
  end
end
