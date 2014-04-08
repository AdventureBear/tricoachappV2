require 'spec_helper'

describe "Navigating Races" do
	it "allows navigation from the detail page to the listing page" do
	
	race = Race.create(race_attributes)

	visit race_url(race)

	click_link "All Races"

	expect(current_path).to eq(races_path)

	end

	it "allows navigation from the listing page to the detail page" do
		
		race = Race.create(race_attributes)

		visit races_url

		click_link race.name

		expect(current_path).to eq(race_path(race))

	end


end