class CheckoutController
  def create
    order = Order.find(params[:id])
    CheckoutFacade.new(order).process_checkout
    render json: { success: true }
  end
end
