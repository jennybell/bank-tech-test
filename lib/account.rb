# frozen_string_literal: true

require_relative 'statement'

class Account
  attr_reader :balance, :transactions

  OPENING_BALANCE = 0

  def initialize
    @balance = OPENING_BALANCE
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << [Time.now.strftime('%d/%m/%y'), ' ', amount.to_s,  @balance.to_s]
  end

  def withdraw(amount)
    raise "Withdrawal request exceeds account balance of #{balance}" if exceeds_balance?(amount)

    @balance -= amount
    @transactions << [Time.now.strftime('%d/%m/%Y'), amount.to_s, ' ', @balance.to_s]
  end

  def print_statement(statement = Statement.new)
    @statement = statement
    @statement.print_table(@transactions)
  end

  private

  def exceeds_balance?(amount)
    amount > balance
  end
end
