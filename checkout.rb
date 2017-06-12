class Checkout

  def total_price(basket, *offer)
    total = 0
      for item in basket.items do
        total += item.price
      end

      offer.each {|offer| saving = offer.apply_offer basket
          total -= saving }

    return total
  end

end
