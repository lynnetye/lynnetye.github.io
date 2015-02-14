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

# cheetah.eat(antelope)
# => "Yummy!"

# antelope.eat(cheetah)
# => "Ew, yuck!"


human = Omnivore.new("human")
spinach = Herbivore.new("spinach")

# human.eat(cheetah)
# => "Yummy!"

# human.eat(antelope)
# => "Yummy!"

# human.eat(spinach)
# => "Yummy!"

cheetah = Carnivore.new("cheetah")
antelope = Herbivore.new("antelope")
spinach = Plant.new("spinach")

cheetah.eat(antelope)
=> "Cheetah thinks that antelope is yummy!"

cheetah.eat(spinach)
=> "Cheetah says, "Yuck. Spinach is gross!""

lynne = Omnivore.new("Lynne")
courtland = Omnivore.new("Courtland")

lynne.eat(lynne)
=> "#suicide"
=> "Don't do it!"

lynne.eat(courtland)
=> "Lynne thinks that Courtland is yummy!"
=> "(can you say cannibalism?!)"


