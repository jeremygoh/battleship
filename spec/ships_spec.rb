require 'ships'

describe Ship do
let(:patrol_boat){PatrolBoat.new}
	it 'should initialize with a location of [nil,nil] for patrol boat' do
		patrol_boat.location.should eq [nil, nil]
	end

	it 'has a default value of not sunk' do
		patrol_boat.sunk?.should be_false
	end

	it 'has now been sunk' do
		patrol_boat.sink!
		patrol_boat.sunk?.should be_true
	end

	it 'AircraftCarrier has length of 5' do
		airccarrier = AircraftCarrier.new
		airccarrier.length.should eq 5
	end

	it 'Battleship has length of 4' do
		airccarrier = Battleship.new
		airccarrier.length.should eq 4
	end

	it 'Submarine has length of 3' do
		airccarrier = Submarine.new
		airccarrier.length.should eq 3
	end

	it 'Destroyer has length of 3' do
		airccarrier = Destroyer.new
		airccarrier.length.should eq 3
	end

context "location" do

	it "should require the location to be the same length and will return a message otherwise" do
		patrol_boat.set_location(["A1"]).should eq "Wrong location length. Length of the ship is #{patrol_boat.length}."
	end

	it 'should allow the setting of a location. New location is ["A1", "A2"]' do
		patrol_boat.set_location ["A1", "A2"]
		patrol_boat.location.should eq ["A1", "A2"]
	end

	xit 'should not exceed the boundary beyond J otherwise return a messsage' do
		patrol_boat.set_location(["K2","K3"]).should eq "You are outside of the boundary"
		patrol_boat.location.should eq [nil,nil]
	end

end

end