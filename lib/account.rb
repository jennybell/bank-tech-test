# frozen_string_literal: true

require_relative 'statement'

class Account
  attr_reader :balance, :transactions

  OPENING_BALANCE = 0
  MINIMUM_TRANSACTION = 0.01

  def initialize(statement = Statement.new)
    @balance = OPENING_BALANCE
    @transactions = []
    @statement = statement
  end

  def deposit(amount)
    raise 'Invalid transaction' if invalid_transaction?(amount)

    @balance += amount
    credit_transaction(amount, @balance)
  end

  def withdraw(amount)
    raise "Withdrawal request exceeds account balance of #{balance}" if exceeds_balance?(amount)
    raise 'Invalid transaction' if invalid_transaction?(amount)

    @balance -= amount
    debit_transaction(amount, @balance)
  end

  def print_statement
    @statement.print_table(@transactions)
  end

  private

  def exceeds_balance?(amount)
    amount > balance
  end

  def invalid_transaction?(amount)
    amount < MINIMUM_TRANSACTION
  end

  def credit_transaction(amount, balance)
    @transactions << "#{Time.now.strftime('%d/%m/%Y')} || #{format('%.2f', amount)} || || #{format('%.2f', balance)}"
  end

  def debit_transaction(amount, balance)
    @transactions << "#{Time.now.strftime('%d/%m/%Y')} || || #{format('%.2f', amount)} || #{format('%.2f', balance)}"
  end
end
