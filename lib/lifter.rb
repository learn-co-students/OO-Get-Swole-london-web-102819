class Lifter
  attr_reader :name, :lift_total

  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|m| m.lifter == self}
  end

  def gyms
    memberships.map {|m| m.gym}
  end

  def self.average_lift
    total_lifts = self.all.map {|l| l.lift_total}
    average = (total_lifts.sum) / (total_lifts.size)
  end

  #Get the total cost of a specific lifter's gym memberships
  def total_cost
    (memberships.map {|m| m.cost}).sum
  end

  #Given a gym and a membership cost, sign a specific lifter up for a new gym
  #(cost, lifter, gym)
  def sign_gym(cost, gym)
    Membership.new(cost, self, gym)
  end

end
