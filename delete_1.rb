
class Animal
  def eat(food)
  end
end

class Plant
end

class Carnivore < Animal
  def can_eat?(food)
    if food.class <= Animal
  end
end

class Omnivore < Animal
  def can_eat?(food)
    true
  end
end

class Herbivore < Animal
  def can_eat?(food)
    if food.class <= Plant
  end
end


