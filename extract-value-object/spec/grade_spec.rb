require 'spec_helper'

describe Grade do
  describe '#execute' do
    it 'should return F if score less than 60' do
      score = 59

      result = Grade.execute(score)

      expect(result).to eq('F')
    end

    it 'should return D if score less than 70' do
      score = 69

      result = Grade.execute(score)

      expect(result).to eq('D')
    end

    it 'should return C if score less than 80' do
      score = 79

      result = Grade.execute(score)

      expect(result).to eq('C')
    end

    it 'should return B if score less than 90' do
      score = 89

      result = Grade.execute(score)

      expect(result).to eq('B')
    end

    it 'should return A otherwise' do
      score = 95

      result = Grade.execute(score)

      expect(result).to eq('A')
    end
  end
end
