feature 'user vists home page' do
  scenario 'displays some text' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end
end