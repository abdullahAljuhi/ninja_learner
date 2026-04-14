# # let think how we can fix it by adapter and factory or adapter only 
# class CheckoutService
#   def initialize(provider)
#     @provider = provider
#   end

#   def pay(amount)
#     if @provider == :stripe
#       StripeGateway.new.charge(amount: amount)
#     elsif @provider == :paypal
#       PaypalGateway.new.make_payment(amount)
#     elsif @provider == :paymob
#       PaymobGateway.new.pay(amount * 100) # expects cents
#     else
#       raise "Unsupported provider"
#     end
#   end
# end


# class StripeGateway
#   def charge(amount:)
#     puts "Stripe charged #{amount} USD"
#   end
# end

# class PaypalGateway
#   def make_payment(amount)
#     puts "Paypal paid #{amount} USD"
#   end
# end

# class PaymobGateway
#   def pay(cents)
#     puts "Paymob paid #{cents} cents"
#   end
# end
