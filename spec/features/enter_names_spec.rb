

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'User can enter their name' do
  scenario 'Name is displayed' do
  visit '/'
  fill_in('Name_1', with: 'Godzilla')
  fill_in('Name_2', with: 'Godzuki')
  click_button('Submit')
  expect(page).to have_content("Godzilla")
  expect(page).to have_content("Godzuki")
  end
end