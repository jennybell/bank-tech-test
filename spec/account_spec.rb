# frozen_string_literal: true

require 'account'

describe Account do
  let(:statement) { instance_double('Statement') }
  subject(:account) { described_class.new }

  describe '#initialize' do
    it 'makes an account with a balance of zero' do
      expect(account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'allows money to be deposited into the bank account' do
      account.deposit(5)
      expect(account.balance).to eq(5)
    end
  end

  describe '#withdraw' do
    it 'allows money to be withdrawn from the bank account' do
      account.deposit(5)
      account.withdraw(3)
      expect(account.balance).to eq(2)
    end

    it 'raises an error if requested withdrawal exceeds balance' do
      account.deposit(5)
      expect { account.withdraw(7) }.to raise_error "Withdrawal request exceeds account balance of #{subject.balance}"
    end
  end

  it 'stores a debit transaction' do
    subject.deposit(5)
    p subject.transactions
    expect(subject.transactions.length).to eq(1)
  end
end
