# frozen_string_literal: true

require 'account'

describe Account do
  describe '#initialize' do
    it 'makes an account with a balance of zero' do
      expect(subject.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'stores a credit transaction' do
      account = Account.new
      account.deposit(5)

      expect(account.transactions.length).to eq(1)
    end

    it 'allows money to be deposited into the bank account' do
      account = Account.new
      account.deposit(5)
      expect(account.balance).to eq(5)
    end
  end

  describe '#withdraw' do
    it 'stores a debit transaction' do
      account = Account.new
      account.deposit(5)
      account.withdraw(2)

      expect(account.transactions.length).to eq(2)
    end

    it 'allows money to be withdrawn from the bank account' do
      account = Account.new
      account.deposit(5)
      account.withdraw(3)
      expect(account.balance).to eq(2)
    end

    it 'raises an error if requested withdrawal exceeds balance' do
      subject.deposit(5)
      expect { subject.withdraw(7) }.to raise_error "Withdrawal request exceeds account balance of #{subject.balance}"
    end
  end
end
