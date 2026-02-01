# frozen_string_literal: true

# class NotificationSender
#   def initialize(type, message)
#     @type = type
#     @message = message
#   end

#   def send_notification
#     notifier =
#       if @type == "email"
#         EmailNotifier.new
#       elsif @type == "sms"
#         SmsNotifier.new
#       elsif @type == "push"
#         PushNotifier.new
#       else
#         raise "Unknown type"
#       end

#     notifier.send(@message)
#   end
# end
