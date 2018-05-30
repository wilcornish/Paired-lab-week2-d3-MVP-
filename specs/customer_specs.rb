require("minitest/autorun")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")
require("minitest/rg")
class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Alistar MacKenzie",100, 64)
    @customer2 = Customer.new("Small Kevin", 5, 16)
    @drink1 = Drink.new("Tennents", 4, 1)
    @drink2 = Drink.new("Vodka", 4, 1)
    drinks = [@drink1, @drink2]
    @pub1 = Pub.new("Jolly Judge", drinks)
  end

def test_customer_has_name
  assert_equal("Alistar MacKenzie", @customer1.name())
end

def test_customer_has_money
  assert_equal(100, @customer1.wallet())
end

def test_customer_can_decrease_wallet
  @customer1.decrease_wallet(4)
  assert_equal(96, @customer1.wallet())
end

def test_customer_can_pay_for_drink
  @customer1.pay(@pub1,"Tennents")
  assert_equal(96, @customer1.wallet())
end

def test_customer_has_age
  assert_equal(64, @customer1.age())
end

def test_customer_alcohol_level
  assert_equal(0, @customer1.alcohol_level())
end

def test_customer_increase_alcohol_level
  @customer1.increase_alcohol_level(1)
  assert_equal(1, @customer1.alcohol_level())
end

def test_prove_appropritate_age__accept
  assert_equal(true, @customer1.age_check())
end

def test_prove_appropritate_age__deny
  assert_equal(false, @customer2.age_check())
end

















end
