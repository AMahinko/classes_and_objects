class Paperboy

  def initialize(name)
    @name = name
    @exp = 0
    @money = 0.00
    @total_papers = 0.to_i
  end

  attr_reader :name, :exp, :money, :total_papers


  def quota
    return @exp / 2 + 50
  end

  def deliver(start, finish)

    distance = finish - start + 1
    distance = distance * -1 + 2 if distance < 0


    @total_papers += distance


    if distance < quota
      @money += (distance * 0.25) - 2
    elsif distance > quota
      difference = distance - quota
      @money += (0.25*quota) + (0.5 * difference)
    else
      @money += (distance * 0.25)
    end

  end

  def report
    puts "My name is #{@name}, I delivered #{@total_papers} papers and I made #{@money} so far."
  end
end
