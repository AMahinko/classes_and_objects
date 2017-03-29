class Bankaccount

  def initialize(accnumber)
    @accnumber = accnumber.to_s
    @balance = 0
  end



  attr_accessor :balance

  # def deposit(amount)
    # @balance += amount
  # end



end
