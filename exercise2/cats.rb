class Cats

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def meal_time
    if @meal_time < 12
      puts "#{@name} is due to eat at #{@meal_time}AM"
    else
      puts "#{@name} is due to eat at #{@meal_time}PM"
    end


  end

  def meow
    puts "I'm #{@name} and I eat #{@preferred_food} at #{@meal_time}."
  end

end



london = Cats.new("London", "Fish", 8)

charon = Cats.new("Charon", "Milk", 9)

molly = Cats.new("Molly", "kibble", 8)


charon.meow
london.meow
molly.meow
