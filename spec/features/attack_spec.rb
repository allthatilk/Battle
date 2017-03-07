feature "Attacking other player" do
  scenario "allows player 1 to get attack confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Attack successful")
  end
end
