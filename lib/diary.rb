require 'pg'

class Diary
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'diary_manager_test')
    else
      connection = PG.connect(dbname: 'diary_manager')
    end
    result = connection.exec("SELECT * FROM entries;")
    result.map { |entry| entry['entry'] }
  end
end
