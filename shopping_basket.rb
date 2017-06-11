class ShoppingBasket
  attr_reader :items

  def initialize
    @items = []
  end

  def add item
    @items.push item
  end

  def total_price
    total = 0
      for item in @items do
        total += item.price
      end
    return total
  end


end
