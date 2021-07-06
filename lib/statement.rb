require_relative 'account'
require 'terminal-table'

class Statement
  attr_reader :transactions, :table

  OPENING_TRANSACTIONS = []

  def initialize
    @transactions = OPENING_TRANSACTIONS
  end

  def print
    @table = table_of_transactions
    puts table
  end

  def stores_debit_transaction(amount)
    @transactions << [Time.now.strftime("%d, %m, %y")]
  end

  private

  def table_of_transactions
    rows = @transactions
    Terminal::Table.new title: 'Statement', headings: %w[Date Credit Debit Balance], rows: rows
  end
end
