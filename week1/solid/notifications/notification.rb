class Notification
  def send(user)
    raise NotImplementedError, 'Subclasses must implement the send method'
  end
end
