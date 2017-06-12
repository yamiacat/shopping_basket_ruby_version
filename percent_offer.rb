class PercentOffer

  def apply_offer basket
    total = 0
      for item in basket.items do
        total += item.price
      end

    return total * 0.1
  end



end
