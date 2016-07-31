require './duck'
require './flyable/with_wings'
require './quackable/quack'

class RedheadDuck < Duck
  def initialize
    super(Flyable::WithWings.new, Quackable::Quack.new)
  end

  def display
    "I'm redhead duck"
  end
end
