require("minitest/autorun")
require_relative("../drink.rb")
require("minitest/rg")
class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Tennents", 4)
  end



    def test_drink_name
      assert_equal("Tennents",@drink1.name)
    end

    def test_drink_price
      assert_equal(4, @drink1.price)
    end









































end
