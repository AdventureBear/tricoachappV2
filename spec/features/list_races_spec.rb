require 'spec_helper'

describe "Viewing the list of races" do

	it "shows the races" do

		visit races_url

		expect(page).to have_text("3 Races")
		 expect(page).to have_text("Race 1")
  		expect(page).to have_text("Race 2")
  		expect(page).to have_text("Race 3")

	end
end

