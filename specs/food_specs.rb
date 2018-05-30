require("minitest/autorun")
require_relative("../food.rb")
require("minitest/rg")
class FoodTest < MiniTest::Test

  def setup
    @food1 = Food.new("Pie", 4, 1)
  end



    def test_food_name
      assert_equal("Pie",@food1.name)
    end

    def test_food_price
      assert_equal(4, @food1.price)
    end

    def test_rejuvination_level
      assert_equal(1, @food1.rejuvination_level())
    end


end
