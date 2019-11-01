# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'


######## Gym class testing ########
g1 = Gym.new("Pure Gym")
g2 = Gym.new("Virgin Active")
g3 = Gym.new("The Gym Group")
g4 = Gym.new("Easy Gym")


######## Lifter class testing ########
l1 = Lifter.new("Qing", 15)
l2 = Lifter.new("Mattew", 10)
l3 = Lifter.new("Ana", 45)
l4 = Lifter.new("Jamie", 95)
l5 = Lifter.new("Tom", 50)
l6 = Lifter.new("Lucy", 55)


######## Membership class testing ########
Membership.new(300, l1, g1)
Membership.new(500, l2, g2)
Membership.new(800, l3, g3)
Membership.new(900, l4, g4)
Membership.new(1100, l5, g1)


binding.pry

puts "Gains!"
