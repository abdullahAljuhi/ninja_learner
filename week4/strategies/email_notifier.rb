require_relative './notifier'

class EmailNotifier < Notifier
  def send(message)
    puts "📧 Email: #{message}"
  end
end
