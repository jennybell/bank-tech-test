# frozen_string_literal: true

require 'account'

describe Account do
  describe '#initialize' do
    it 'makes an account with a balance of zero' do
      expect(subject.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'allows money to be deposited into the bank account' do
      subject.deposit(5)
      expect(subject.balance).to eq(5)
    end
  end

  describe '#withdraw' do
    it 'allows money to be withdrawn from the bank account' do
      subject.deposit(5)
      subject.withdraw(3)
      expect(subject.balance).to eq(2)
    end

    it 'raises an error if requested withdrawal exceeds balance' do
      subject.deposit(5)
      expect { subject.withdraw(7) }.to raise_error "Withdrawal request exceeds account balance of #{subject.balance}"
    end
  end

  describe '#print_statement' do
  it 'prints the balance of the account' do
    subject.deposit(5)
    expect(subject.print_statement).to include("5")
  end
  end

end
