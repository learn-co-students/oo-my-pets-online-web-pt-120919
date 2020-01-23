class Dog
  @@all = []
  attr_accessor :name, :owner, :breed 
  def initialize(name)
    @name = name 
    @owner = owner
    @@all << self 
  end
  # code goes here
end