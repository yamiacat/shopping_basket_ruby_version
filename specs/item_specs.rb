require("minitest/autorun")
require("minitest/rg")
require_relative("../item.rb")

class TestItem < MiniTest::Test

  def test_item_has_description
    item = Item.new("Beer", 200)
    assert_equal("Beer", item.description)
  end

  def test_item_has_price
    item = Item.new("Beer", 200)
  end



end
