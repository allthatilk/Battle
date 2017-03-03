feature "Attacking other player" do
  scenario "allows player 1 to attack player 2 and get confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Attack successful")
  end
end
