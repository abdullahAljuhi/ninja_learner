# class NotificationService
#   def send_email(message)
#     if ENV["PROVIDER"] == "aws"
#       AwsEmail.new.send(message)
#     else
#       TwilioEmail.new.send(message)
#     end
#   end

#   def send_sms(message)
#     if ENV["PROVIDER"] == "aws"
#       AwsSms.new.send(message)
#     else
#       TwilioSms.new.send(message)
#     end
#   end
# end


# class AwsEmail
#   def send(message)
#     puts "AWS Email: #{message}"
#   end
# end

# class AwsSms
#   def send(message)
#     puts "AWS SMS: #{message}"
#   end
# end

# class TwilioEmail
#   def send(message)
#     puts "Twilio Email: #{message}"
#   end
# end

# class TwilioSms
#   def send(message)
#     puts "Twilio SMS: #{message}"
#   end
# end