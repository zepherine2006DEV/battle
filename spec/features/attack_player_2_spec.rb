# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "Attack Player" do
    scenario "player_1 attacks player_2 with confirmation" do
        sign_in_and_play
        click_button("Attack Player 2")
        expect(page).to have_content("Ouch!")
    end
end