class Owner
  @@all = []
  attr_accessor :name, :pets 
  def initialize(name)
    @name = name 
    @@all << self 
  end
  # code goes here
end