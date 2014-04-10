require 'spec_helper'

describe "Editing a race" do
  
  it "updates the race and shows the race's updated details" do
    race = Race.create(race_attributes)
    
    visit race_url(race)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_race_path(race))
        
    expect(find_field('Name').value).to eq(race.name)


    fill_in 'Name', with: "Updated Race Name"
    
    click_button 'Update Race'
    
    expect(current_path).to eq(race_path(race))

    expect(page).to have_text('Updated Race Name')


    expect(page).to have_text('Race successfully updated!')


  end


      it "does not update the race if it's invalid" do
          race = Race.create(race_attributes)
          
          visit edit_race_url(race)
          
          fill_in 'Name', with: " "
          
          click_button 'Update Race' 
              
          expect(page).to have_text('error')
        end


  
end