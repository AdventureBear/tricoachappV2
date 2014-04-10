require 'spec_helper'

describe "Deleting a race" do 
  it "destroys the race and shows the race listing without the deleted race" do
    race = Race.create(race_attributes)

    visit race_path(race)
    
    click_link 'Delete'
    
    expect(current_path).to eq(races_path)
    expect(page).not_to have_text(race.name)


    expect(page).to have_text("Race successfully deleted!")
  end
end