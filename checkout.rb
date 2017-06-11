class Checkout

  def total_price basket
    total = 0
      for item in basket.items do
        total += item.price
      end
    return total
  end

end
