require 'diary'

describe Diary do
  describe '.all' do
    it 'returns all entries' do
      diary = Diary.all

      expect(diary).to include("What a lovely day")
      expect(diary).to include("An interesting day")
    end
  end
end
