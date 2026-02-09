
require_relative '../notifier'

module Strategies
  module Twilio
    class Sms < Notifier
      def send(message)
        puts "Twilio SMS: #{message}"
      end
    end
  end
end
