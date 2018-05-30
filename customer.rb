class Customer

  attr_reader :name, :wallet, :age, :alcohol_level

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @alcohol_level = 0
  end

  def decrease_wallet(amount)
    @wallet -= amount
  end

  def pay_drink(pub, drink)
    drink_price = pub.drink_price(drink)
    self.decrease_wallet(drink_price)
    pub.recieve_money(drink_price)
  end

  def pay_food(pub, food)
    price  = pub.food_price(food)
    self.decrease_wallet(price)
    pub.recieve_money(price)
  end

  def increase_alcohol_level(increase)
    @alcohol_level += increase
  end

  def age_check()
    @age >= 18
  end

  def alcohol_level_check
    @alcohol_level <= 10
  end

  def drink_alcohol(drink)
   self.increase_alcohol_level(drink.alcohol_level())
  end

end
