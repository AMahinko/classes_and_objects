class Paperboy

  def initialize(name)
    @name = name
    @exp = 0
    @money = 0.00
  end

  attr_reader :name, :exp, :money


  def quota
    return @exp / 2 + 50
  end

  def deliver(start, finish)
    distance = finish - start + 1
    case distance
    when distance < quota
      @money += (distance * 0.25)
      @money -= 2.00
    when distance > quota
      difference = distance - quota
      @money += (0.25*quota) * (0.5 * difference)
    when distance == quota
      @money += (distance * 0.25)
    end
  end



end
