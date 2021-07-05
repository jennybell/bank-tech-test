# frozen_string_literal: true

require 'account'

describe Account do
  describe '#initialize' do
    it 'makes ana ccount with a balance of zero' do
      expect(subject.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'allows money to be deposited into the bank account' do
      subject.deposit(5)
      expect(subject.balance).to eq(5)
    end
  end
end
