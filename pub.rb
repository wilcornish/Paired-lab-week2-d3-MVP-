class Pub
  attr_reader(:name, :drinks, :food, :till)

  def initialize(name, drinks, food)
    @name = name
    @drinks = drinks
    @food = food
    @till = 0
  end

  def recieve_money(income)
    @till += income
  end

  def get_drink(name)
    for drink in @drinks
      return drink if drink.name == name
    end
  end

  def drink_price(name)
    drink = self.get_drink(name)
    return drink.price
  end

  def get_food(name)
    for food in @food
      return food if food.name == name
    end
  end

  def food_price(name)
    food = self.get_food(name)
    return food.price()
  end

  def can_serve(customer)
    return(customer.alcohol_level_check() && customer.age_check())
  end

  def serve_drink(customer, drink)
    if self.can_serve(customer)
        customer.pay_drink(self,drink)
      else
        return "I can't serve you"
    end
  end

  def serve_food(customer, food)
    customer.pay_food(self, food)
  end
  
end
