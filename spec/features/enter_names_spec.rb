

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'User can enter their name' do
  scenario 'Name is displayed' do
  sign_in_and_play
  expect(page).to have_content("Godzilla")
  expect(page).to have_content("Godzuki")
  end
end