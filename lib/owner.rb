class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species
  def initialize(name, species = "human")
    @name = name 
    @species = species 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def self.count 
    @@all.count
  end
  
  def self.reset_all
    self.all.delete_if { |i| i == self }
  end
  
  
  # code goes here
end