require 'spec_helper'

describe "Navigating Races" do
	it "allows navigation from the detail page to the listing page" do
	
	race = Race.create(name: "Pittsburgh Olympic",
                      description: "A beautiful location in downtown Pittsburgh, with HV lanes, runs and poopy swims and more. ",
                      race_category: "Olympic",
                      city: "Chicago",
                      state: "IL",
                      race_date: "2014-05-02")

	visit race_url(race)

	click_link "All Races"

	expect(current_path).to eq(races_path)

	end
end