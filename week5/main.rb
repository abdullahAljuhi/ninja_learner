# frozen_string_literal: true

require_relative './notification_sender'

class Main
  def self.run
    NotificationSender.new(:email).send('Hello World via Email!')
    NotificationSender.new(:sms).send('Hello World via SMS!')
  end
end

Main.run
