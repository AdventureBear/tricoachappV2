require 'spec_helper'

describe "A Race" do 


	it "requires a name" do
		race = Race.new(name: "")
	  
	  	expect(race.valid?).to be_false # populates errors
	  	expect(race.errors[:name].any?).to be_true

	end

	it "requires a date" do
	  race = Race.new(race_date: "")
	  
	  expect(race.valid?).to be_false
	  expect(race.errors[:race_date].any?).to be_true
	end

	it "requires a category" do
		race = Race.new(race_category: "")

		expect(race.valid?).to be_false
	  	expect(race.errors[:race_category].any?).to be_true
	 end

	it "accepts a positive swim distance"  do
	  race = Race.new(swim_distance: 10000000.00)

	  expect(race.valid?).to be_false
	  expect(race.errors[:swim_distance].any?).to be_false
	end

	it "accepts a positive bike distance"  do
	  race = Race.new(bike_distance: 10000000.00)

	  expect(race.valid?).to be_false
	  expect(race.errors[:bike_distance].any?).to be_false
	end

	it "accepts a positive run distance"  do
	  race = Race.new(run_distance: 10000000.00)

	  expect(race.valid?).to be_false
	  expect(race.errors[:run_distance].any?).to be_false
	end

	it "rejects a negative swim distance" do
		race = Race.new(swim_distance: -10000000.00)

	  	expect(race.valid?).to be_false
	  	expect(race.errors[:swim_distance].any?).to be_true
	end
	
	it "rejects a negative bike distance" do
		race = Race.new(bike_distance: -10000000.00)

	  	expect(race.valid?).to be_false
	  	expect(race.errors[:bike_distance].any?).to be_true
	end

	it "rejects a negative run distance" do
		race = Race.new(run_distance: -10000000.00)

	  	expect(race.valid?).to be_false
	  	expect(race.errors[:run_distance].any?).to be_true
	end



	it "accepts properly formatted image file names" do
	  file_names = %w[e.png movie.png movie.jpg movie.gif MOVIE.GIF]
	  file_names.each do |file_name|
	    race = Race.new(image_url: file_name)
	    
	    expect(race.valid?).to be_false
	    expect(race.errors[:image_url].any?).to be_false
	  end
	end

	it "rejects improperly formatted image file names" do
	  file_names = %w[movie .jpg .png .gif movie.pdf movie.doc]
	  file_names.each do |file_name|
	    race = Race.new(image_url: file_name)
	    
	    expect(race.valid?).to be_false
	    expect(race.errors[:image_url].any?).to be_true
	  end
	end


	it "rejects improperly formatted website URLs"
	  

	it "rejects improperly formatted website URLs"

end