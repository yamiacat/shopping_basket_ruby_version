require("minitest/autorun")
require("minitest/rg")
require_relative("../shopping_basket.rb")
require_relative("../item.rb")
require_relative("../checkout.rb")

class TestCheckout < MiniTest::Test


  def test_basket_can_give_total_price
    basket = ShoppingBasket.new
    item = Item.new("Beer", 200)
    item2 = Item.new("Scotch", 2000)
    checkout = Checkout.new
    basket.add item
    basket.add item2

    assert_equal(2200, checkout.total_price( basket))
  end

  def test_basket_total_price_not_hardcoded
    basket = ShoppingBasket.new
    item2 = Item.new("Scotch", 2000)
    checkout = Checkout.new
    basket.add item2

    assert_equal(2000, checkout.total_price(basket))
  end


end
