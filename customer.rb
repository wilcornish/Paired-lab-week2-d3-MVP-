class Customer

attr_reader :name, :wallet, :age

def initialize(name, wallet, age)
  @name = name
  @wallet = wallet
  @age = age
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
