require './duck'
require './flyable/no_way'
require './quackable/mute'

class DecoyDuck < Duck
  def initialize
    super(Flyable::NoWay.new, Quackable::Mute.new)
  end

  def display
    "I'm decoy duck"
  end
end
