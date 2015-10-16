module BattleRoyal
  Weapon = Struct.new(:name, :points)

  module WeaponChest
    TREASURES = [
      Weapon.new(:throwing_star, 5),
      Weapon.new(:staff, 25),
      Weapon.new(:axe, 50),
      Weapon.new(:mace, 100),
      Weapon.new(:katana, 200),
      Weapon.new(:sabre, 400)
    ]

    def self.random
      TREASURES.sample
    end
  end
end
