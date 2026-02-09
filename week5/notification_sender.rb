# frozen_string_literal: true

require_relative './factories/aws_notification_factory'
require_relative './factories/twilio_notification_factory'

class NotificationSender
  attr_reader :provider, :type

  NOTIFIER_FACTORIES = {
    email: ->(sender) { sender.notifier_factory.create_email_notifier },
    sms: ->(sender) { sender.notifier_factory.create_sms_notifier }
  }.freeze

  def initialize(type = nil, provider = nil)
    @provider = provider || ENV['PROVIDER'] || 'aws'
    @type = type.to_sym if type
  end

  def send(message)
    raise "Unknown notification type: #{@type}" unless NOTIFIER_FACTORIES.key?(@type)

    notifier = NOTIFIER_FACTORIES[@type].call(self)
    notifier.send(message)
  end

  def notifier_factory
    @notifier_factory ||= factory_class.new
  end

  private

  def factory_class
    Object.const_get("Factories::#{@provider.capitalize}NotificationFactory")
  end
end
