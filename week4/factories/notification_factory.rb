class NotificationFactory
  def send(message)
    # Shared preprocessing

    # Factory method to create notifier
    notifier = create_notifier

    # Use the notifier to send the message
    notifier.send(message)
  end

  def create_notifier
    raise NotImplementedError
  end
end
