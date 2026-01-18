# frozen_string_literal: true

module NotificationObserver
  @subscribers = Hash.new { |hash, key| hash[key] = [] }

  def self.subscribe(event_name, &block)
    @subscribers[event_name] << block
  end

  def self.publish(event_name, *args)
    @subscribers[event_name].each { |subscriber| subscriber.call(*args) }
  end
end
