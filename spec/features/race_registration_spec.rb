describe "Adding a Race Registration" do
  before do
    @user = User.create!(user_attributes)
    sign_in(@user)
  end

  it "Registers for a race for the signed-in user and shows the Unregister button" do
    race = Race.create!(race_attributes)

    visit race_url(race)

    expect(page).to have_text("0 racers")

    expect {
      click_button 'Register'
    }.to change(@user.raceregs, :count).by(1)

    expect(current_path).to eq(race_path(race))

    expect(page).to have_text("This race added to your list of races")
    expect(page).to have_text("1 racers")
    expect(page).to have_button("Unregister")
  end