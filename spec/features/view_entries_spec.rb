require 'pg'

feature 'Viewing diary entries' do
  scenario 'A user can see their entries' do
    connection = PG.connect(dbname: 'diary_manager_test')
    connection.exec("INSERT INTO entries (entry) VALUES('What a lovely day')")
    connection.exec("INSERT INTO entries (entry) VALUES('An interesting day')")

    visit('/entries')

    expect(page).to have_content 'What a lovely day'
    expect(page).to have_content 'An interesting day'
  end
end
