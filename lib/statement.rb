require_relative 'account'
require 'terminal-table'

class Statement
  attr_reader :table

  def initialize
   end

  def print_table(transactions)
    rows = transactions
    @table = Terminal::Table.new title: 'Statement', headings: %w[Date Credit Debit Balance], rows: rows
    puts table
  end

  private

  def table_of_transactions; end
end
