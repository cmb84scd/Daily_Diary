require 'pg'

def setup_test_database
  p "Setting up test database..."

  connection = PG.connect(dbname: 'diary_manager_test')

  connection.exec("TRUNCATE entries;")
end
