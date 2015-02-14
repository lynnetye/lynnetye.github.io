
class Organism
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Animal < Organism
  def eat(food)
    if can_eat?(food)
      if self == food
        puts "#suicide"
        puts "Don't do it!"
      elsif self.class == food.class
        puts "#{@name.capitalize} thinks that #{food.name} is yummy!"
        puts "(can you say cannibalism?!)"
      else
        puts "#{@name.capitalize} thinks that #{food.name} is yummy!"
      end
    else
      puts "#{@name.capitalize} says, \"Yuck. #{food.name} is gross!\""
    end
  end

  def can_eat?(food)
    raise ArgumentError.new("Not sure what this animal eats.")
  end
end

class Plant < Organism
end

class Carnivore < Animal
  def can_eat?(food)
    food.class <= Animal
  end
end

class Omnivore < Animal
  def can_eat?(food)
    true
  end
end

class Herbivore < Animal
  def can_eat?(food)
    food.class <= Plant
  end
end

cheetah = Carnivore.new("cheetah")
courtland = Omnivore.new("courtland")
lynne = Omnivore.new("lynne")
koala = Herbivore.new("koala")
spinach = Plant.new("spinach")