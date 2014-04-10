require 'spec_helper'

describe "Creating a new race" do 
  it "saves the race and shows the new race's details" do    
    visit races_url
    
    click_link 'Add New Race'
    
    expect(current_path).to eq(new_race_path)
		
    fill_in "Name", with: "New Race Title"
    fill_in "Description", with: "Superheroes saving the world from villains"
    #fill_in "Race category", with: "Olympic"
    #fill_in "Race date", with: "2014-08-03"
    #select (Time.now.year - 1).to_s, :from => "race_released_on_1i"
    
    # If you're taking advantage of the HTML 5 date field in Chrome, 
    # you'll need to use 'fill_in' rather than 'select'
    # fill_in "Released on", with: (Time.now.year - 1).to_s
     
    click_button 'Create Race'

    expect(current_path).to eq(race_path(Race.last))   
    
    expect(page).to have_text('New Race Title')
  end
end