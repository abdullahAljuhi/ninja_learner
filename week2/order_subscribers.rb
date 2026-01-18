module OrderSubscribers
  NotificationObserver.subscribe(:order_confirmed) do |order|
    puts "Email sent to #{order.user_email}"
  end

  NotificationObserver.subscribe(:order_confirmed) do |order|
    puts "SMS sent to #{order.user_phone}"
  end

  NotificationObserver.subscribe(:order_confirmed) do |_order|
    puts 'Dashboard updated'
  end
end
