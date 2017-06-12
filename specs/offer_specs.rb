require("minitest/autorun")
require("minitest/rg")
require_relative("../shopping_basket.rb")
require_relative("../item.rb")
require_relative("../checkout.rb")
require_relative("../percent_offer.rb")

class TestOffer < MiniTest::Test

  def test_ten_percent_off_over_20_works
    basket = ShoppingBasket.new
    item = Item.new("Beer", 200)
    item2 = Item.new("Scotch", 2000)
    checkout = Checkout.new
    offer = PercentOffer.new
    basket.add item
    basket.add item2

    assert_equal(1980, checkout.total_price( basket, offer))
  end


end
