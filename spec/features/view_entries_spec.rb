feature 'Viewing diary entries' do
  scenario 'A user can see their entries' do
    visit('/entries')
    expect(page).to have_content 'What a lovely day'
    expect(page).to have_content 'An interesting day'
  end
end
