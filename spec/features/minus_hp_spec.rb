feature "Attacks minus hitpoints" do
  scenario "allows player 1 to minus HP from player 2" do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).not_to have_content("Susan: 100HP")
    expect(page).to have_content("Susan: 90 HP")
  end
end
