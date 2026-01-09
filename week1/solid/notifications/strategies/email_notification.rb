require_relative '../notification'

class EmailNotification < Notification
  def send(user)
    puts "Sending email to #{user.email}"
  end
end
