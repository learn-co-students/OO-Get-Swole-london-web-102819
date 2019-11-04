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
    Membership.all.select{|m| m.lifter == self}
  end

  def gyms
    memberships.map{|m| m.gym}
  end

  def self.lifter_count
    self.all.count
  end

  def self.average_lift
    (self.all.reduce(0){|sum, l| sum += l.lift_total}/ lifter_count.to_f).round(2)
  end

  def memberships_cost
    memberships.reduce(0){|sum, m| sum += m.cost}
  end

  def sign_up(cost, gym)
    Membership.new(cost, gym, self)
  end

  

end
