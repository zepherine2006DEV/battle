def sign_in_and_play
    visit '/'
    fill_in('Name_1', with: 'Godzilla')
    fill_in('Name_2', with: 'Godzuki')
    click_button('Submit')
end