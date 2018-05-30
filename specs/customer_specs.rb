require("minitest/autorun")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")
require("minitest/rg")
class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Alistar MacKenzie",100)
  end

def test_customer_has_name
  assert_equal("Alistar MacKenzie", @customer.name())
end

def test_customer_has_money
  assert_equal(100, @customer.wallet())
end






















end
