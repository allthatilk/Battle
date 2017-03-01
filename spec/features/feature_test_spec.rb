feature "Entering player names" do
  scenario "allows user to enter Player names" do
    visit '/'
    fill_in :player_1, with: 'Clive'
    fill_in :player_2, with: 'Susan'
    click_button 'Submit'
    expect(page).to have_content("Clive vs. Susan")
  end
end
