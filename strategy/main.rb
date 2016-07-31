require './redhead_duck'
require './rubber_duck'
require './decoy_duck'
require './quackable/squeak'

redhead_duck = RedheadDuck.new
puts redhead_duck.display
puts redhead_duck.fly
puts redhead_duck.quack
puts "-------------\n"

rubber_duck = RubberDuck.new
puts rubber_duck.display
puts rubber_duck.fly
puts rubber_duck.quack
puts "-------------\n"

decoy_duck = DecoyDuck.new
puts decoy_duck.display
puts decoy_duck.fly
puts decoy_duck.quack
print "\n"
puts 'Dynamically change quckable behavior for DecoyDuck to squeaking'
decoy_duck.quackable = Quackable::Squeak.new
puts decoy_duck.quack
