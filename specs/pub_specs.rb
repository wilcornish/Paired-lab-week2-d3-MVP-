require("minitest/autorun")
require_relative("../pub.rb")
require_relative("../drink.rb")
require("minitest/rg")
class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Tennents", 4)
    drinks = [@drink1]
    @pub1 = Pub.new("Jolly Judge", drinks)
  end

  def test_pub_name
    assert_equal("Jolly Judge", @pub1.name())
  end

  def test_pub_amount_in_till
    assert_equal(0,@pub1.till())
  end

  def test_pub_has_drinks
    assert_equal([@drink1],@pub1.drinks())
  end

end
