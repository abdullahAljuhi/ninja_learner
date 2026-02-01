require_relative './notifier'

class SmsNotifier < Notifier
  def send(message)
    puts "📱 SMS: #{message}"
  end
end
