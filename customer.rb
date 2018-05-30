class Customer

attr_reader :name, :wallet
def initialize(name, wallet)
  @name = name
  @wallet = wallet
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
