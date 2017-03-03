feature "Entering player names" do
  scenario "allows user to enter Player names" do
    sign_in_and_play
    expect(page).to have_content("Clive vs. Susan")
  end
end
