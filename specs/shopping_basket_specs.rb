require("minitest/autorun")
require("minitest/rg")
require_relative("../shopping_basket.rb")
require_relative("../item.rb")

class TestShoppingBasket < MiniTest::Test

  def test_shopping_basket_starts_empty
    basket = ShoppingBasket.new
    assert_equal(0, basket.items.count)
  end

  def test_basket_can_accept_item
    basket = ShoppingBasket.new
    item = Item.new("Beer", 200)
    basket.add item

    assert_equal(1, basket.items.count)
  end

  def test_basket_can_accept_multiple_items
    basket = ShoppingBasket.new
    item = Item.new("Beer", 200)
    item2 = Item.new("Scotch", 2000)
    basket.add item
    basket.add item2

    assert_equal(2, basket.items.count)
  end

  def test_basket_can_be_emptied
    basket = ShoppingBasket.new
    item = Item.new("Beer", 200)
    item2 = Item.new("Scotch", 2000)
    basket.add item
    basket.add item2
    basket.empty

    assert_equal(0, basket.items.count)
  end

  def test_one_item_can_be_removed
    basket = ShoppingBasket.new
    item = Item.new("Beer", 200)
    item2 = Item.new("Scotch", 2000)
    basket.add item
    basket.add item2
    basket.remove item

    assert_equal(1, basket.items.count)
  end



end
