class Player
  attr_reader :health
  attr_accessor :name
  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end

  def to_s
    "#{@name} health = #{@health}, points = #{points}, and score = #{score}"
  end

  def found_treasure(treasure)
    @found_treasures[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points"
    puts @found_treasures
  end

  def points
    @found_treasures.values.inject(0, :+)
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def score
    points + @health
  end

  def strong?
    @health >= 100
  end
end

if __FILE__ == $PROGRAM_NAME
  # part of the readme
  player = Player.new('moe')
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end
