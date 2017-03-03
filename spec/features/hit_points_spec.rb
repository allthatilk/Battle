feature "Viewing hit points" do
  scenario "allows player 1 to view player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Susan: 100 HP")
  end
end
