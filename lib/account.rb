# frozen_string_literal: true

require_relative 'statement'

class Account
  attr_reader :balance, :transactions

  OPENING_BALANCE = 0


  OPENING_TRANSACTIONS = []

    
  def initialize
    @balance = OPENING_BALANCE
    @transactions = OPENING_TRANSACTIONS
  end

  def deposit(amount)
    @balance += amount
    @transactions << [Time.now.strftime("%d, %m, %y"), "#{amount}", " ", "#{@balance}" ]
  end

  def withdraw(amount)
    raise "Withdrawal request exceeds account balance of #{balance}" if exceeds_balance?(amount)

    @balance -= amount
  end

  def print_statement(statement = Statement.new)
    @statement = statement
    @transactions = transactions
    @statement.print_table(transactions)
  end

  private

  def exceeds_balance?(amount)
    amount > balance
  end
end
