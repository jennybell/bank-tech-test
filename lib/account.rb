# frozen_string_literal: true
require_relative 'statement'

class Account
  attr_reader :balance

  OPENING_BALANCE = 0

  def initialize(statement = Statement.new)
    @balance = OPENING_BALANCE
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "Withdrawal request exceeds account balance of #{balance}" if exceeds_balance?(amount)

    @balance -= amount
  end

  def print_statement
   @statement.print
  end 

  private

  def exceeds_balance?(amount)
    amount > balance
  end
end
