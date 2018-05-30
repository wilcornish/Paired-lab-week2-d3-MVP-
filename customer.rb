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

def pay(pub, drink)
  price  = pub.drink_price(drink)
  @wallet -= price
  pub.recieve_money(price)
end

def increase_alcohol_level(increase)
  @alcohol_level += increase
end

def age_check()
  @age >= 18
end






















end
