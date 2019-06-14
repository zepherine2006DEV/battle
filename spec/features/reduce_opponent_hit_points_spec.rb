# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature 'Reduces opponents hit points' do
  scenario "Player two's hitpoints reduced after attack" do
    sign_in_and_play
    click_button("Attack Player 2")
    expect(page).to have_content("HP 90")
  end
end
