# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'Displays Hit Points' do
    scenario 'Player 2s Hit Points Displayed' do

    visit '/'
    fill_in('Name_1', with: 'Godzilla')
    fill_in('Name_2', with: 'Godzuki')
    click_button('Submit')
    expect(page).to have_content("HP 100")

    end
  end