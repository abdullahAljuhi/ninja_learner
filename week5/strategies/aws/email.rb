

require_relative '../notifier'

module Strategies
  module Aws
    class Email < Notifier
      def send(message)
        puts "AWS Email: #{message}"
      end
    end
  end
end
