require 'diary'

describe Diary do
  describe '.all' do
    it 'returns all entries' do
      diary = Diary.all

      expect(diary).to include("Entry 1")
      expect(diary).to include("Entry 2")
    end
  end
end
