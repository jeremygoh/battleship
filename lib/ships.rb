class Ship
	attr_accessor :length, :location, :sunk

	def initialize
		@sunk = false

	end

	def sunk?
		@sunk
	end

	def sink!
		@sunk = true
	end

	def location
		@location
	end

	def set_location(arr)
		
		if arr.size != location.size
			"Wrong location length. Length of the ship is #{self.length}."
		elsif !within_boundary? 
			"You are outside of the boundary"
		else	
			@location.replace arr
		end
		
	end

	def within_boundary? 
		true
	end
end

class AircraftCarrier < Ship
	def initialize
		@length = 5
		@location = Array.new(@length)	
		super
	end
end

class Battleship < Ship
	def initialize
		@length = 4
		@location = Array.new(@length)	
		super
	end
end


class Submarine < Ship
	def initialize
		@length = 3
		@location = Array.new(@length)	
		super
	end
end


class Destroyer < Ship
	def initialize
		@length = 3
		@location = Array.new(@length)	
		super
	end
end

class PatrolBoat < Ship
	def initialize
		@length = 2
		@location = Array.new(@length)	
		super
	end
end


















