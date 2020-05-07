require 'pg'

class Diary
  def self.all
    connection = PG.connect(dbname: 'diary_manager')
    result = connection.exec("SELECT * FROM entries;")
    result.map { |entry| entry['entry'] }
  end
end
