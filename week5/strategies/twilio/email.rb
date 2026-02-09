
require_relative '../notifier'

module Strategies
  module Twilio
    class Email < Notifier
      def send(message)
        puts "Twilio Email: #{message}"
      end
    end
  end
end
