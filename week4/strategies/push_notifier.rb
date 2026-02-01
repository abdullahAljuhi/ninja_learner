require_relative './notifier'

class PushNotifier < Notifier
  def send(message)
    puts "🔔 Push: #{message}"
  end
end
