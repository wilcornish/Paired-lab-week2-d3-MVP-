class Pub
  attr_reader(:name, :drinks, :till)

def initialize(name, drinks)
  @name = name
  @drinks = drinks
  @till = 0
end

  def recieve_money(income)
    @till += income
  end

  def get_drink(name)
    for drink in @drinks
    return drink if drink.name() == name
  end
  end

  def drink_price(name)
    drink = self.get_drink(name)
    return drink.price()
  end


































end
