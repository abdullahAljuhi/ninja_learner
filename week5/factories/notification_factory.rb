# frozen_string_literal: true

module Factories
  class NotificationFactory
    def create_email_notifier
      raise NotImplementedError
    end

    def create_sms_notifier
      raise NotImplementedError
    end
  end
end
