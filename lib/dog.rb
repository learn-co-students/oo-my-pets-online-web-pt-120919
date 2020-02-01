class Dog
  # code goes here

#   Instance methods
#    initializes with a name and an Owner
#    can change its owner
#    can't change its name
#    initializes with a nervous mood
#    can change its mood

  attr_accessor :mood, :owner
  attr_reader :name

  @@all = []


  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

# Class methods
#    knows all the dogs

  def self.all
    @@all
  end 


end
