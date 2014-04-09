require 'spec_helper'

describe "Editing a race" do
  
  it "updates the race and shows the race's updated details" do
    race = Race.create(race_attributes)
    
    visit race_url(race)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_race_path(race))
        
    expect(find_field('Name').value).to eq(race.name)


    fill_in 'Name', with: "Updated Race Title"
    
    click_button 'Update Race'
    
    expect(current_path).to eq(race_path(race))

    expect(page).to have_text('Updated Race Title')


  end
  
end