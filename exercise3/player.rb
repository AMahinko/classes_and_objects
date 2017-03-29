class Player

  def initialize
    @gold = 0
    @health = 10
    @lives = 5
  end

  def debug
    puts @gold
    puts @health
    puts @lives
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold += 1
    if gold % 10 == 0
      level_up
    end
  end

def battle(damage)
  @health -= damage
  @lives -= 1 if @health <= 0
  @health = 10 if @health <= 0
  restart if @lives <=0
end


def restart
  @gold = 0
  @health = 10
  @lives = 5
end




end
