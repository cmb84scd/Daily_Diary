require 'diary'

describe Diary do
  describe '.all' do
    it 'returns all entries' do
      connection = PG.connect(dbname: 'diary_manager_test')
      connection.exec("INSERT INTO entries (entry) VALUES('What a lovely day')")
      connection.exec("INSERT INTO entries (entry) VALUES('An interesting day')")

      diary = Diary.all

      expect(diary).to include("What a lovely day")
      expect(diary).to include("An interesting day")
    end
  end
end
