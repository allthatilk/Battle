def sign_in_and_play
  visit '/'
  fill_in :player_name_1, with: 'Clive'
  fill_in :player_name_2, with: 'Susan'
  click_button 'Submit'
end
