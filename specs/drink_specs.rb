require("minitest/autorun")
require_relative("../drink.rb")
require("minitest/rg")
class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Tennents", 4, 1)
  end

  def test_drink_name
    assert_equal("Tennents",@drink1.name)
  end

  def test_drink_price
    assert_equal(4, @drink1.price)
  end

  def test_alcohol_level
    assert_equal(1, @drink1.alcohol_level())
  end

end
