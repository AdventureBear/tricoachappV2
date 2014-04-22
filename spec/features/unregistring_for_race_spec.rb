require 'spec_helper'

describe "Unregistering for a race" do
  before do
    @user = User.create!(user_attributes)
    sign_in(@user)
  end

  it "deletes the favorite and shows the Fave button" do
    race = Race.create!(race_attributes)

    visit race_url(race)
    click_button 'Register'

    expect(page).to have_text("1 racer")

    expect {
      click_button 'Unregister'
    }.to change(@user.raceregs, :count).by(-1)

    expect(current_path).to eq(race_path(race))

    expect(page).to have_text("Sorry you unregistered!")
    expect(page).to have_text("0 racers")
    expect(page).to have_button("Register")
  end
end