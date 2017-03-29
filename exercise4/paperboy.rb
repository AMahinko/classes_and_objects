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
    puts distance
    puts quota
    if distance < quota
      @money += (distance * 0.25)
      @money -= 2.00
    elsif distance > quota
      difference = distance - quota
      @money += (0.25*quota) + (0.5 * difference)
    else
      @money += (distance * 0.25)
    end
    puts money
  end





end
