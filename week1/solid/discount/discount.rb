class Discount
  def apply(total)
    raise NotImplementedError, 'Subclasses must implement the apply method'
  end
end
