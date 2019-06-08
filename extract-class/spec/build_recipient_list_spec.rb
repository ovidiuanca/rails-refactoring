require 'spec_helper'

describe BuildRecipientList do
  describe '#execute' do
    it 'splits on newline' do
      build_recipient_list = BuildRecipientList.new("email@example.com\nuser1\nJohn")

      result = build_recipient_list.execute

      expect(result).to eq(['email@example.com', 'user1', 'John'])
    end

    it 'splits on comma' do
      build_recipient_list = BuildRecipientList.new('email@example.com, user1, John')

      result = build_recipient_list.execute

      expect(result).to eq(['email@example.com', 'user1', 'John'])
    end

    it 'splits on semicolon' do
      build_recipient_list = BuildRecipientList.new('email@example.com;user1;John')

      result = build_recipient_list.execute

      expect(result).to eq(['email@example.com', 'user1', 'John'])
    end
  end
end
