class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|m| m.gym == self}
  end

  def lifters
    memberships.map{|m| m.lifter}
  end

  def lifter_names
    lifters.map{|l| l.name}
  end

  def combined_lifter_total
    lifters.reduce(0){|sum, l| sum += l.lift_total}
  end
end
