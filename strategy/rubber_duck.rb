require './duck'
require './flyable/no_way'
require './quackable/squeak'

class RubberDuck < Duck
  def initialize
    super(Flyable::NoWay.new, Quackable::Squeak.new)
  end

  def display
    "I'm rubber duck"
  end
end
