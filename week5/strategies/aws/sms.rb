
require_relative '../notifier'

module Strategies
  module Aws
    class Sms < Notifier
      def send(message)
        puts "AWS SMS: #{message}"
      end
    end
  end
end
