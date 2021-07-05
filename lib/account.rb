# frozen_string_literal: true

class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
   @balance += amount
  end

  def withdraw(amount)
    fail "Withdrawal request exceeds account balance of #{balance}" if amount > balance
    @balance -= amount
  end 

end
