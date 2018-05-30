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

































end
