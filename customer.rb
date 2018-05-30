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
























end
