# frozen_string_literal: true

require_relative 'statement'

class Account
  attr_reader :balance, :transactions

  OPENING_BALANCE = 0

  def initialize(statement = Statement.new)
    @balance = OPENING_BALANCE
    @transactions = []
      @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @transactions << "#{Time.now.strftime('%d/%m/%Y')} || #{format('%.2f', amount)} || || #{format('%.2f', @balance)}"
  end

  def withdraw(amount)
    raise "Withdrawal request exceeds account balance of #{balance}" if exceeds_balance?(amount)

    @balance -= amount
    @transactions << "#{Time.now.strftime('%d/%m/%Y')} || || #{format('%.2f', amount)} || #{format('%.2f', @balance)}"
  end

  def print_statement
  
    @statement.print_table(@transactions)
  end

  private

  def exceeds_balance?(amount)
    amount > balance
  end
end
