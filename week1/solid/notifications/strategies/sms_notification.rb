require_relative '../notification'

class SmsNotification < Notification
  def send(user)
    puts "Sending SMS to #{user.phone}"
  end
end
