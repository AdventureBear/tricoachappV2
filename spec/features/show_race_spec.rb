require 'spec_helper'

describe "Viewing a single race" do 

	it "Shows the races details" do
	
	race = Race.create(name: "Pittsburgh Olympic",
                      description: "A beautiful location in downtown Pittsburgh, with HV lanes, runs and poopy swims and more. ",
                      race_category: "Olympic",
                      city: "Chicago",
                      state: "IL",
                      race_date: "2014-05-02")


	visit "http://example.com/races/#{race.id}"


		 expect(page).to have_text(race.name)
  		 expect(page).to have_text(race.description)
  		 expect(page).to have_text(race.race_category)
  		 expect(page).to have_text(race.city)
  		 expect(page).to have_text(race.state)
  		 expect(page).to have_text(race.race_date)

	end



end
