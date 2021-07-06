# frozen_string_literal: true

class Account
  attr_reader :balance

  OPENING_BALANCE = 0

  def initialize
    @balance = OPENING_BALANCE
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "Withdrawal request exceeds account balance of #{balance}" if exceeds_balance?(amount)

    @balance -= amount
  end

  def print_statement
   "Your balance is: #{balance}"
  end 

  private

  def exceeds_balance?(amount)
    amount > balance
  end
end
