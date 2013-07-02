class Grid

	attr_accessor :hits, :ships, :misses	

	def initialize
	 	@ships = [AircraftCarrier.new, Battleship.new, Submarine.new, Destroyer.new, PatrolBoat.new]
	 	aircraft_carrier, battleship, submarine, destroyer, patrol_boat = @ships
	 	@hits = []
	 	@misses = []
	end


	def has_ships?
		!@ships.empty?
	end

	def hit!(coordinate)
		@hits << coordinate
	end

	def miss!(coordinate)
		@misses << coordinate
	end




end