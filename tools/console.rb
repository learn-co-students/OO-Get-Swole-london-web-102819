# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new('john',134)
l2 = Lifter.new('james',156)
l3 = Lifter.new('ruby',23)

g1 = Gym.new('hoochies')
g2 = Gym.new('goochies')

m1 = Membership.new(100, g1, l2)
m2 = Membership.new(399, g1, l3)
m3 = Membership.new(90, g2, l2)
m4 = Membership.new(10, g2, l1)

l1.sign_up(13, g1)


binding.pry

puts "Gains!"
