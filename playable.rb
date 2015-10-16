module BattleRoyal
  module Playable
    def power_up
      self.health += 15
      puts "#{name} got a power up!"
    end

    def damage
      self.health -= 10
      puts "#{name} got damaged!"
    end

    def strong?
      self.health >= 100
    end
  end
end
