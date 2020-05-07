feature 'Viewing diary entries' do
  scenario 'A user can see their entries' do
    visit('/entries')
    expect(page).to have_content 'Entry 1'
    expect(page).to have_content 'Entry 2'
  end
end
