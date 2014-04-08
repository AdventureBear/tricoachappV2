require 'spec_helper'

describe "Viewing a single race" do 

	it "Shows the races details" do
	
	race = Race.create(race_attributes)


	
	visit race_url(race)


		 expect(page).to have_text(race.name)
  		 expect(page).to have_text(race.description)
  		 expect(page).to have_text(race.race_category)
  		 expect(page).to have_text(race.city)
  		 expect(page).to have_text(race.state)
  		 expect(page).to have_text(race.race_date)

	end



end
