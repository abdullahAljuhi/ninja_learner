# frozen_string_literal: true

class GatewayAdapter
  def pay(_amount)
    raise NotImplementedError, 'Subclasses must implement the pay method'
  end
end
