require("minitest/autorun")
require_relative("../pub.rb")
require_relative("../drink.rb")
require("minitest/rg")
class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Tennents", 4, 1)
    @drink2 = Drink.new("Vodka", 4, 1)
    drinks = [@drink1, @drink2]
    @pub1 = Pub.new("Jolly Judge", drinks)
  end

  def test_pub_name
    assert_equal("Jolly Judge", @pub1.name())
  end

  def test_pub_amount_in_till
    assert_equal(0,@pub1.till())
  end

  def test_pub_has_drinks
    assert_equal([@drink1, @drink2],@pub1.drinks())
  end

  def test_pub_can_recieve_money
    @pub1.recieve_money(4)
    assert_equal(4, @pub1.till())
  end

  def test_get_drink_by_name
    assert_equal(@drink2, @pub1.get_drink("Vodka"))
  end

  def test_pub_get_drink_price
    assert_equal(4, @pub1.drink_price("Tennents"))
  end


end
