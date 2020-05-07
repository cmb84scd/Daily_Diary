feature 'Viewing index page' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Welcome to Daily Diary!"
    click_button "Entries"
  end
end
