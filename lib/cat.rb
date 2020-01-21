class Cat

	ALL = []
  
  attr_accessor :owner, :mood
	attr_reader :name

	def initialize(name, owner)
		@name = name
		@owner = owner
		@mood = 'nervous'
		ALL << self
	end

def self.all
	ALL
end



end