class Cat
  # code goes here



#  Instance methods
#     initializes with a name and an Owner
#     can change its owner
#     can't change its name
#     initializes with a nervous mood
#     can change its mood

  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end


#Class Methods
#  knows all cats
  def self.all
    @@all
  end
end
