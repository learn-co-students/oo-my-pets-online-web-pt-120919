class Cat
  @@all = []
  attr_accessor :name, :owner, :breed
  def initialize(name)
    @name = name
    @owner = self.owner
    @@all << self
  end
  # code goes here
end