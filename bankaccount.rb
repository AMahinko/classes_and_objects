class Bankaccount

  def initialize(accnumber)
    @accnumber = accnumber.to_s
    @balance = 0.0
    @interest_rate = 0.05
  end



  attr_accessor :balance

  def deposit(amount)
    @balance += amount
    return @balance.to_f.round(2)
  end

  def withdraw(amount)
    @balance -= amount
    return @balance.to_f.round(2)
  end

  def interest
    # @interest_rate = 0.05
    @balance += @balance * @interest_rate
    return balance.round(2)
  end

end
