class Duck
  attr_accessor :flyable, :quackable

  def initialize(flyable, quackable)
    self.flyable = flyable
    self.quackable = quackable
  end

  def display
    "I'm duck!"
  end

  def swim
    "I'm swimming"
  end

  def fly
    flyable.fly
  end

  def quack
    quackable.quack
  end
end
