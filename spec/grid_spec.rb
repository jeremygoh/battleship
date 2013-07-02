require 'grid'

describe Grid do
	
	let(:grid) {Grid.new}

	it 'should contain all five ships' do
		grid.has_ships?.should be_true
	end

	it "should contain no hits by default" do
		grid.hits.should eq []
	end

	it "should contain no misses by defaut" do
		grid.misses.should eq []
	end

	it "can be hit and have it recorded" do
		grid.hit!(11)
		grid.hits.first.should eq 11
	end

	it "can have multiples and have them recorded" do
		grid.hit!(11)
		grid.hit!(13)
		grid.hits.should eq [11,13]
	end

	it "can be missed and have it recorded" do
		grid.miss!(1)
		grid.misses.should eq [1]
	end

	it "can be missed and have it recorded" do
		grid.miss!(1)
		grid.miss!(2)
		grid.misses.should eq [1,2]
	end




end