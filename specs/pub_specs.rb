require("minitest/autorun")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../food.rb")
require_relative("../customer.rb")

class PubTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Alistar MacKenzie",100, 64)
    @customer2 = Customer.new("Small Kevin", 5, 16)
    @food1 = Food.new("Pie", 4, 1)
    @drink1 = Drink.new("Tennents", 4, 1)
    @drink2 = Drink.new("Vodka", 4, 1)
    drinks = [@drink1, @drink2]
    food = [@food1]
    @pub1 = Pub.new("Jolly Judge",drinks, food)
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

  def test_get_food_by_name
    assert_equal(@food1, @pub1.get_food("Pie"))
  end

  def test_pub_get_food_price
    assert_equal(4, @pub1.food_price("Pie"))
  end

  def test_pub_allow_service
    assert_equal(true, @pub1.can_serve(@customer1))
  end

  def test_pub_refuse_service__underage
    assert_equal(false, @pub1.can_serve(@customer2))
  end

  def test_pub_refuse_service__drunk
    @customer1.increase_alcohol_level(11)
    assert_equal(false, @pub1.can_serve(@customer1))
  end

  def test_can_serve_drink
    @pub1.serve_drink(@customer1, "Tennents")
    assert_equal(4, @pub1.till)
  end

  def test_cant_serve_drink
    @pub1.serve_drink(@customer2, "Vodka")
    assert_equal(0, @pub1.till)
  end

  def test_can_serve_food
    @pub1.serve_food(@customer1, "Pie")
    assert_equal(4, @pub1.till)
  end

end
