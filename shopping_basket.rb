class ShoppingBasket
  attr_reader :items

  def initialize
    @items = []
  end

  def add item
    @items.push item
  end

  def empty
    @items = []
  end

  def remove item
    if @items.include? item
      @items.delete item
    end
  end



end
