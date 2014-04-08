require 'spec_helper'

describe "Viewing the list of races" do

	it "shows the races" do

race1 = Race.create(name: "Iron Man",
                      description: "PG-13",
                      race_category: "Olympic",
                      city: "Chicago",
                      state: "IL",
                      race_date: "2014-05-02")

race2 = Race.create(name: "Superman",
                      description: "PG",
                      race_category: "Ironman",
                      city: "St. Petersburg",
                      state: "FL",
                      race_date: "2014-12-15")

race3 = Race.create(name: "Spider-Man",
                      description: "PG-13",
                      race_category: "Half-Iron",
                      city: "Pittsburgh",
                      state: "PA",
                      race_date: "2014-05-03")


		visit races_url

		expect(page).to have_text("3 Races")
		 expect(page).to have_text(race1.name)
  		expect(page).to have_text(race2.name)
  		expect(page).to have_text(race3.name)

  		 expect(page).to have_text(race1.description)
  		  expect(page).to have_text(race1.race_category)
  		   expect(page).to have_text(race1.city)
  		    expect(page).to have_text(race1.state)
  		     expect(page).to have_text(race1.race_date)

	end
end

